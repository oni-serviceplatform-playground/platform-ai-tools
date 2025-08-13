#!/bin/bash
# Quick Jira issue creation script
# @author: Team AI Tools  
# @date: 2025-01-13

# Usage: ./jira-quick.sh "Issue title" "Issue description"

TITLE=$1
DESCRIPTION=$2

if [ -z "$TITLE" ]; then
    echo "❌ Usage: ./jira-quick.sh \"Issue title\" \"Issue description\""
    exit 1
fi

echo "🎫 Creating Jira issue..."
echo "📝 Title: $TITLE"
echo "📄 Description: $DESCRIPTION"

# Example using curl (replace with your Jira API details)
curl -X POST \
  -H "Authorization: Bearer $JIRA_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d "{
    \"fields\": {
      \"project\": {\"key\": \"TEAM\"},
      \"summary\": \"$TITLE\",
      \"description\": \"$DESCRIPTION\",
      \"issuetype\": {\"name\": \"Task\"}
    }
  }" \
  https://your-domain.atlassian.net/rest/api/3/issue

echo "✅ Jira issue created successfully!"