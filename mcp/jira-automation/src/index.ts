#!/usr/bin/env node
/**
 * Jira Automation MCP Server
 * @author Team AI Tools
 * @date 2025-01-13
 */
import { Server } from '@modelcontextprotocol/sdk/server/index.js';
import { StdioServerTransport } from '@modelcontextprotocol/sdk/server/stdio.js';

const server = new Server({
  name: 'jira-automation',
  version: '1.0.0',
}, {
  capabilities: {
    tools: {}
  }
});

// Tool: Create Jira Issue
server.setRequestHandler('tools/list', () => ({
  tools: [{
    name: 'create_jira_issue',
    description: 'Create a new Jira issue',
    inputSchema: {
      type: 'object',
      properties: {
        summary: { type: 'string', description: 'Issue title' },
        description: { type: 'string', description: 'Issue description' },
        project: { type: 'string', description: 'Project key' }
      },
      required: ['summary', 'project']
    }
  }]
}));

server.setRequestHandler('tools/call', async (request) => {
  if (request.params.name === 'create_jira_issue') {
    const { summary, description, project } = request.params.arguments as any;
    
    return {
      content: [{
        type: 'text',
        text: `Created Jira issue in ${project}: ${summary}`
      }]
    };
  }
  
  throw new Error(`Unknown tool: ${request.params.name}`);
});

const transport = new StdioServerTransport();
await server.connect(transport);
console.error('Jira Automation MCP Server started');