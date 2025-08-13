#!/usr/bin/env node
import { Server } from '@modelcontextprotocol/sdk/server/index.js';
import { StdioServerTransport } from '@modelcontextprotocol/sdk/server/stdio.js';

// MCP 서버 생성
const server = new Server({
  name: 'hello-world-mcp',
  version: '1.0.0',
}, {
  capabilities: {
    tools: {}
  }
});

// 도구 정의 - 현재 시간 반환
server.setRequestHandler('tools/list', () => ({
  tools: [{
    name: 'get_current_time',
    description: '현재 시간을 한국 시간으로 반환합니다',
    inputSchema: {
      type: 'object',
      properties: {}
    }
  }]
}));

// 도구 실행
server.setRequestHandler('tools/call', async (request) => {
  if (request.params.name === 'get_current_time') {
    const now = new Date();
    const koreanTime = now.toLocaleString('ko-KR', { timeZone: 'Asia/Seoul' });
    
    return {
      content: [{
        type: 'text',
        text: `현재 한국 시간: ${koreanTime}`
      }]
    };
  }
  
  throw new Error(`Unknown tool: ${request.params.name}`);
});

// 서버 시작
const transport = new StdioServerTransport();
await server.connect(transport);
console.error('MCP 서버가 시작되었습니다!');