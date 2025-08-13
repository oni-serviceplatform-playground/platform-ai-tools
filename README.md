# Platform AI Tools Project 🚀

> Building custom MCP servers, Agents, and Commands for Claude Code

## 📋 Project Overview

A collaborative collection of AI tools created by our team members, with one new tool added each week.
An automation tool library built together by 10 team members!

## 🎯 Goals

- **Start Simple**: Begin with 10-50 lines of code
- **Be Practical**: Create tools that are actually useful for daily work
- **Work Together**: Share and improve each other's code

## 📁 Project Structure

```
platform-ai-tools/
├── mcp/
│   ├── jira-automation/     # Jira automation tools
│   ├── db-query/           # Database query tools  
│   └── log-analyzer/       # Log analysis tools
├── agents/
│   ├── code-reviewer.md    # Code review specialist
│   ├── sql-expert.md       # SQL writing assistant
│   └── test-writer.md      # Test case generator
├── commands/
│   ├── deploy.sh           # Deployment scripts
│   ├── db-backup.sh        # Database backup
│   └── jira-quick.sh       # Quick Jira creation
├── templates/              # Starting templates
├── docs/                   # Guide documents
└── CONTRIBUTORS.md         # Contributors list
```

## 🚀 Quick Start

### 1. Clone Repository
```bash
git clone https://github.com/oni-serviceplatform-playground/platform-ai-tools.git
cd platform-ai-tools
```

### 2. Choose a Template
- [MCP Template](./templates/mcp/)
- [Agent Template](./templates/agent/)
- [Command Template](./templates/command/)

### 3. Create Your Tool
```bash
# Example: Creating an MCP
cp -r templates/mcp/hello-world mcp/my-awesome-tool/
cd mcp/my-awesome-tool/
# Edit code...

# Add author info (at top of file)
# @author: John Doe
# @date: 2025-01-13
```

## 📅 Weekly Schedule

| Week | Theme | Goal |
|------|-------|------|
| Week 1 | Hello World | Create your first working tool |
| Week 2 | Work Tools | Build something actually useful |
| Week 3 | Combinations | Connect tools together |
| Week 4 | Team Library | Select top 5 tools |

## 🏆 This Week's Highlights

> Updated every Friday! See [Contributors List](./CONTRIBUTORS.md)

## 💡 Idea Bank

### MCP Ideas
- [ ] Jira issue auto-generator
- [ ] Team database query tool
- [ ] Log analyzer
- [ ] API testing tool

### Agent Ideas  
- [ ] PR review checklist
- [ ] Daily report generator
- [ ] Test case generator
- [ ] Documentation automation

### Command Ideas
- [ ] Project setup commands
- [ ] Deployment scripts
- [ ] Code formatter
- [ ] Debugging helpers

## 📚 Resources

- [Claude Code Official Docs](https://docs.anthropic.com/en/docs/claude-code)
- [MCP SDK Documentation](https://github.com/modelcontextprotocol/sdk)
- [Our Team Guide](./docs/guide.md)

## 🤝 How to Contribute

1. Create your branch: `git checkout -b feat/[tool-name]`
2. Develop tool (add author comment at top of file)
3. Create PR (include "by @name" in commit message)
4. Present at Friday sharing session (5 minutes)

### Author Attribution Rules
```javascript
/**
 * Tool description
 * @author John Doe
 * @date 2025-01-13
 */
```

## 💬 Contact

- Slack: #ai-tools channel
- Issues: [GitHub Issues](https://github.com/oni-serviceplatform-playground/platform-ai-tools/issues)

---

**Let's build together! 🎉**

---

# 플랫폼 AI 도구 프로젝트 🚀

> Claude Code를 위한 우리 팀만의 MCP 서버, Agent, Command 만들기

## 📋 프로젝트 소개

매주 1개씩, 팀원들이 직접 만드는 AI 도구 모음집입니다.
10명의 팀원이 함께 만들어가는 자동화 도구 라이브러리!

## 🎯 목표

- **간단하게**: 10-50줄 코드로 시작
- **실용적으로**: 실제 업무에 사용 가능한 도구
- **함께**: 서로의 코드를 공유하고 발전시키기

## 📁 프로젝트 구조

```
platform-ai-tools/
├── mcp/
│   ├── jira-automation/     # Jira 자동화 도구
│   ├── db-query/           # DB 쿼리 도구  
│   └── log-analyzer/       # 로그 분석 도구
├── agents/
│   ├── code-reviewer.md    # 코드 리뷰 전문가
│   ├── sql-expert.md       # SQL 작성 도우미
│   └── test-writer.md      # 테스트 생성기
├── commands/
│   ├── deploy.sh           # 배포 스크립트
│   ├── db-backup.sh        # DB 백업
│   └── jira-quick.sh       # Jira 빠른 생성
├── templates/              # 시작 템플릿
├── docs/                   # 가이드 문서
└── CONTRIBUTORS.md         # 기여자 목록
```

## 🚀 빠른 시작

### 1. 레포지토리 클론
```bash
git clone https://github.com/oni-serviceplatform-playground/platform-ai-tools.git
cd platform-ai-tools
```

### 2. 템플릿 선택
- [MCP 템플릿](./templates/mcp/)
- [Agent 템플릿](./templates/agent/)
- [Command 템플릿](./templates/command/)

### 3. 나만의 도구 만들기
```bash
# 예: MCP 만들기
cp -r templates/mcp/hello-world mcp/my-awesome-tool/
cd mcp/my-awesome-tool/
# 코드 수정...

# 작성자 정보 추가 (파일 상단)
# @author: 홍길동
# @date: 2025-01-13
```

## 📅 주간 일정

| 주차 | 테마 | 목표 |
|------|------|------|
| 1주 | Hello World | 동작하는 첫 도구 만들기 |
| 2주 | 업무 도구 | 실제 사용 가능한 도구 |
| 3주 | 조합하기 | 서로의 도구 연결 |
| 4주 | 팀 라이브러리 | 베스트 5 선정 |

## 🏆 이번 주 우수작

> 매주 금요일 업데이트! [기여자 목록](./CONTRIBUTORS.md) 참고

## 💡 아이디어 뱅크

### MCP 아이디어
- [ ] Jira 이슈 자동 생성기
- [ ] 팀 DB 쿼리 도구
- [ ] 로그 분석기
- [ ] API 테스트 도구

### Agent 아이디어  
- [ ] PR 리뷰 체크리스트
- [ ] 일일 보고서 생성
- [ ] 테스트 케이스 생성기
- [ ] 문서 자동화

### Command 아이디어
- [ ] 프로젝트 셋업 명령어
- [ ] 배포 스크립트
- [ ] 코드 포맷터
- [ ] 디버깅 헬퍼

## 📚 참고 자료

- [Claude Code 공식 문서](https://docs.anthropic.com/en/docs/claude-code)
- [MCP SDK 문서](https://github.com/modelcontextprotocol/sdk)
- [우리 팀 가이드](./docs/guide.md)

## 🤝 기여 방법

1. 자신의 브랜치 생성: `git checkout -b feat/[도구명]`
2. 도구 개발 (파일 상단에 작성자 주석 추가)
3. PR 생성 (커밋 메시지에 "by @이름" 포함)
4. 금요일 공유 세션에서 발표 (5분)

### 작성자 표시 규칙
```javascript
/**
 * 도구 설명
 * @author 홍길동
 * @date 2025-01-13
 */
```

## 💬 문의

- Slack: #ai-tools 채널
- 이슈: [GitHub Issues](https://github.com/oni-serviceplatform-playground/platform-ai-tools/issues)

---

**함께 만들어가요! 🎉**