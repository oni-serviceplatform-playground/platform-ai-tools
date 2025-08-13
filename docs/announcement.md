# 📢 [팀 AI 도구 만들기] 주 1개씩 도전!

안녕하세요 팀원 여러분! 👋

Claude Code를 더 강력하게 만들어줄 우리 팀만의 도구를 만들어보려고 합니다.
**매주 하나씩, 아주 간단한 것부터 시작해요!**

## 📌 규칙
- 매주 **금요일까지** MCP/Agent/Command 중 **1개 제출**
- 코드 **10-50줄** 수준의 간단한 것 OK
- **실패해도 OK**, 시도가 중요!
- 남의 코드 복사/수정 환영 🤝

## 🎯 이번 주 미션 (택 1)

### 1️⃣ Agent 만들기 (제일 쉬워요! ⭐)
- 특정 작업을 잘하는 Claude 만들기
- 마크다운 파일 하나만 작성하면 끝!
- 예: 코드 리뷰 도우미, SQL 작성 도우미

### 2️⃣ Command 만들기 (실용적! ⭐⭐)
- 반복 작업 자동화 스크립트
- bash나 Python으로 작성
- 예: 배포 스크립트, Jira 이슈 생성

### 3️⃣ MCP 만들기 (도전적! ⭐⭐⭐)
- Claude와 외부 도구 연결
- 템플릿 제공됨 (복사해서 수정만!)
- 예: DB 조회, API 호출

## 💡 바로 시작하기

```bash
# 1. 레포 클론
git clone https://github.com/[our-team]/team-ai-tools.git

# 2. 예제 확인
ls templates/

# 3. 내 도구 만들기 (Agent 예시)
cat > agents/code-reviewer.md << EOF
# Code Review Helper
# @author: 홍길동
# @date: 2025-01-13

You are a code review expert...
EOF

# 4. 제출
git add . 
git commit -m "feat: 코드 리뷰 Agent 추가 by @홍길동"
git push
```

## 📚 도움될 자료
- **1분 가이드**: `docs/quick-guide.md`
- **예제 템플릿**: `templates/` 폴더
- **질문**: Slack #ai-tools 채널

## 🎉 금요일 공유 세션
- **시간**: 금요일 오후 4시 (15분)
- **형식**: 5분 발표 + 질문
- **참석 못하면**: 슬랙에 코드 링크만 공유

## 🏆 이번 주 아이디어
- Jira 이슈 자동 생성
- 일일 스탠드업 요약
- 로그 에러 찾기
- 테스트 코드 생성
- PR 체크리스트
- DB 쿼리 템플릿

## 시작이 반!
완벽할 필요 없어요. **동작하는 10줄**이면 충분합니다.
함께 만들어가요! 🚀

---

**Slack**: #ai-tools | **GitHub**: [team-ai-tools](https://github.com/[our-team]/team-ai-tools)