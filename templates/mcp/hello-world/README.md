# Hello World MCP 서버

가장 간단한 MCP 서버 예제입니다. 현재 한국 시간을 반환합니다.

## 설치

```bash
npm install
```

## 실행

```bash
npm start
```

## Claude Code에 등록하기

1. Claude Code 설정 파일 열기:
```bash
code ~/.claude/claude_desktop_config.json
```

2. MCP 서버 추가:
```json
{
  "mcpServers": {
    "hello-world": {
      "command": "node",
      "args": ["/path/to/hello-world/index.js"]
    }
  }
}
```

3. Claude Code 재시작

## 사용 방법

Claude Code에서:
```
"현재 시간 알려줘" 라고 물어보면 
get_current_time 도구를 사용해서 답변합니다.
```

## 커스터마이징 아이디어

- 특정 국가의 시간 반환
- 날짜 계산 기능 추가
- 타임존 변환 기능
- 업무 시간 체크 기능