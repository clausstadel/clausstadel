# Beta Dashboard — Git Push Task Prompt

Use this prompt as the body of the Claude Code task that commits and pushes the updated dashboard.

---

## Prompt

You are committing and pushing the updated beta dashboard.

Run `~/Work/clausstadel/deploy_watch.sh`. It watches `beta_dashboard.html` for up to 90 minutes, and each time it finds uncommitted changes, commits and pushes them to `origin main`, then keeps watching until the window elapses.

### Report

Once the script finishes, report every commit hash and timestamp it pushed during the run.
