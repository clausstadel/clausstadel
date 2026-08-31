# Beta Dashboard — Git Push Task Prompt

Use this prompt as the body of the Claude Code task that commits and pushes the updated dashboard.

---

## Prompt

You are committing and pushing the updated beta dashboard. Follow these steps exactly.

---

### Step 1 — Check for changes in beta_dashboard.html

Run `git status` inside `~/Work/clausstadel/` and check whether `beta_dashboard.html` has any uncommitted changes.

If there are no changes, wait 1 minute and check again. Repeat every minute. If changes have still not appeared within 10 minutes (10 attempts), abort the task and report that no changes to `beta_dashboard.html` were detected.

If there **are** uncommitted changes, perform an additional check: inspect the file modification time of `beta_dashboard.html` (e.g. `stat -f "%Sm" -t "%Y-%m-%d %H:%M:%S" beta_dashboard.html`). If the file was modified within the last 90 minutes, proceed to Step 2. If the file is older than 90 minutes, wait and monitor as described above in case a newer version arrives — but if no newer version has appeared after 10 minutes (10 attempts), proceed to Step 2 anyway with the existing changes.

### Step 2 — Stage, commit, and push

Once changes are detected, run the following:

```bash
git add beta_dashboard.html
git commit -m "Update beta dashboard"
git push origin main
```

### Step 3 — Report

Confirm the commit was pushed successfully. Include the commit hash and timestamp in the report.
