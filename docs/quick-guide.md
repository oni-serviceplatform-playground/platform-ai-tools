# 🚀 1분 가이드

## MCP, Agent, Command가 뭔가요?

### 🔧 MCP (Model Context Protocol)
- Claude Code와 외부 도구를 연결하는 서버
- 예: DB 조회, API 호출, 파일 처리
- **만들기 난이도**: ⭐⭐⭐ (중급)

### 🤖 Agent
- 특정 작업을 잘하는 전문가 Claude
- 마크다운 파일로 작성 (`.md`)
- 예: 코드 리뷰 전문가, SQL 작성 도우미
- **만들기 난이도**: ⭐ (쉬움)

### ⚡ Command
- 자주 쓰는 작업을 한 번에 실행하는 스크립트
- 쉘 스크립트나 Python 스크립트
- 예: 배포 스크립트, 일괄 처리
- **만들기 난이도**: ⭐⭐ (보통)

## 🎯 이번 주 미션 (택 1)

### 옵션 1: Agent 만들기 (추천! 👍)
```markdown
# My Helper Agent
# @author: 홍길동
# @date: 2025-01-13

You are a [역할]. When asked to [작업], you should:
1. [첫 번째 할 일]
2. [두 번째 할 일]
```
파일명: `agents/team-helper.md`

### 옵션 2: Command 만들기
```bash
#!/bin/bash
# @author: 홍길동
# @date: 2025-01-13

echo "작업 시작..."
# 여기에 명령어들
echo "완료!"
```
파일명: `commands/deploy-helper.sh`

### 옵션 3: MCP 만들기
템플릿 복사 후 수정:
```bash
cp -r templates/mcp/hello-world mcp/jira-automation/
# index.js 파일 상단에 작성자 정보 추가
```

## 📤 제출 방법

1. 파일 만들기 (파일 상단에 작성자 주석 필수!)
2. Git에 푸시
```bash
git add .
git commit -m "feat: Jira 자동화 도구 추가 by @홍길동"
git push
```
3. 금요일 공유 (선택)

## 💡 팁
- 남의 코드 복사/수정 OK
- 10줄도 충분해요
- 실패해도 경험!

## 🆘 도움말
- Slack: #ai-tools
- 예제: `templates/` 폴더 참고