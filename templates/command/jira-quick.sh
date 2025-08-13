#!/bin/bash
# Jira 빠른 이슈 생성 커맨드

# 사용법: ./jira-quick.sh "이슈 제목" "이슈 설명"

TITLE=$1
DESCRIPTION=$2

if [ -z "$TITLE" ]; then
    echo "❌ 사용법: ./jira-quick.sh \"이슈 제목\" \"이슈 설명\""
    exit 1
fi

# Jira CLI 사용 예제 (jira CLI 설치 필요)
# jira issue create \
#     --project="PROJ" \
#     --type="Task" \
#     --summary="$TITLE" \
#     --description="$DESCRIPTION" \
#     --assignee="me"

# 또는 curl로 Jira API 직접 호출
curl -X POST \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -H "Content-Type: application/json" \
  -d "{
    \"fields\": {
      \"project\": {\"key\": \"PROJ\"},
      \"summary\": \"$TITLE\",
      \"description\": \"$DESCRIPTION\",
      \"issuetype\": {\"name\": \"Task\"}
    }
  }" \
  https://your-domain.atlassian.net/rest/api/3/issue

echo "✅ Jira 이슈 생성 완료!"