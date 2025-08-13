---
name: "Jira Quick Create"
description: "Quickly create a Jira issue with template"
allowed_tools: ["Bash"]
---

# Jira Quick Create Command

Create a Jira issue quickly using predefined templates.

## Usage
Type `/jira-create [title]` to create a new task.

## Templates
- **Bug**: Include steps to reproduce, expected behavior, actual behavior
- **Task**: Include acceptance criteria and definition of done  
- **Story**: Include user story format and acceptance criteria

## Example
```
Title: Fix login button alignment
Type: Bug
Project: TEAM
Priority: Medium
```

This command will generate a properly formatted Jira issue.