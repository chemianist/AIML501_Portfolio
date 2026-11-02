#!/usr/bin/env bash
set -euo pipefail
USERNAME="${1:-}"
REPO="${2:-ml-algorithms-portfolio}"
if [[ -z "$USERNAME" ]]; then echo "Usage: bash publish.sh GITHUB_USERNAME [REPO_NAME]"; exit 1; fi
if ! command -v git >/dev/null; then echo "Install Git first: https://git-scm.com/downloads"; exit 1; fi
cd "$(dirname "$0")"
[[ -d .git ]] || git init
git branch -M main
REMOTE="https://github.com/${USERNAME}/${REPO}.git"
if git remote get-url origin >/dev/null 2>&1; then
  EXISTING="$(git remote get-url origin)"
  if [[ "$EXISTING" != "$REMOTE" ]]; then echo "Origin already points to $EXISTING. Verify it before proceeding."; exit 1; fi
else git remote add origin "$REMOTE"; fi
git add .
if ! git diff --cached --quiet; then git commit -m "Add machine learning algorithm portfolio"; fi
git push -u origin main
echo "Uploaded. In GitHub: Settings > Pages > Deploy from a branch > main > /(root)"
echo "Expected website: https://${USERNAME}.github.io/${REPO}/"
