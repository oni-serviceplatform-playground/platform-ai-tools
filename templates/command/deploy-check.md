---
name: "Deploy Check"
description: "Check deployment status and run deployment"
allowed_tools: ["Bash", "Read"]
---

# Deploy Check Command

This command checks the current deployment status and runs deployment if needed.

## Pre-deployment Checks
- Run tests: `npm test`
- Build application: `npm run build`
- Check environment variables

## Deployment Process
```bash
echo "🚀 Starting deployment process..."
npm test && npm run build && echo "✅ Ready to deploy!"
```

Use this command by typing `/deploy-check` in Claude Code.