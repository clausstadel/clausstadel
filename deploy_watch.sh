#!/usr/bin/env bash
#
# deploy_watch.sh — watch beta_dashboard.html for changes and auto-push them.
#
# Polls every POLL_INTERVAL seconds for up to DURATION_MINUTES minutes.
# Any time beta_dashboard.html has uncommitted changes, commits and pushes
# it to origin main, then keeps watching until the window elapses.
#
# Usage: ./deploy_watch.sh

set -euo pipefail

REPO_DIR="$HOME/Work/clausstadel"
WATCH_FILE="beta_dashboard.html"
DURATION_MINUTES=90
POLL_INTERVAL=60

cd "$REPO_DIR"

end_time=$(( $(date +%s) + DURATION_MINUTES * 60 ))
pushed=0

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Watching ${WATCH_FILE} for ${DURATION_MINUTES} minutes..."

while [ "$(date +%s)" -lt "$end_time" ]; do
  if [ -n "$(git status --porcelain -- "$WATCH_FILE")" ]; then
    git add "$WATCH_FILE"
    git commit -m "Update beta dashboard"
    git push origin main
    commit_hash=$(git rev-parse HEAD)
    pushed=$((pushed + 1))
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Pushed ${commit_hash}"
  fi
  sleep "$POLL_INTERVAL"
done

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Done watching. ${pushed} push(es) made."
