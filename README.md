### Why do we need this Repo?
- Using the commit-message hooking to automatically add the Ticket ID to the commit description.
  We'll follow the routine to improve and auto-linking the ticket between GitHub and JIRA Ticket.
- All branch name following the convention: `{type}/{project-name}-{ticket-id}-more-detail-of-branch`

Notes:
- The {type} can be: `feature`, `hotfix`
- The {project-name} is short-name of project, ex: 'lxb', 'wms', 'mbc', etc...
- The {ticket-id} is a number of JIRA Ticket: 1234 (from `https://lixibox-engineering.atlassian.net/browse/LXB-1234`)

Example: `feature/lxb-1234-reset-member-coins` will add `[LXB-1234]` to every commits when push to GitHub

### How to Install
#### If U want to use the native of Git-hook
- Run this line on Terminal console
```bash
bash <(curl -s https://raw.githubusercontent.com/lixibox/git-hooks/main/setup)
```
- This script to download and install the `commit-msg` file to `.git/hooks/commit-msg` for your local repo

Ref: https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks

#### If U want to use pre-commit.com hook
- Please add this code to `.pre-commit-config.yaml` file
```yaml
- repo: https://github.com/lixibox/git-hooks
  rev: main
  hooks:
    - id: auto-attach-ticket-id
```
Ref: https://pre-commit.com/#intro
