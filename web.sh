#!/usr/bin/env bash
# Local helper: ./web.sh dev|build|preview  (dist/ is git-ignored; CI builds the real site)
set -euo pipefail
cd "$(dirname "$0")"
[ -d node_modules ] || npm install
case "${1:-dev}" in
  dev) npm run dev -- --open ;;
  build) npm run build ;;
  preview) npm run build && npm run preview -- --open ;;
  *) echo "Usage: $0 dev|build|preview" >&2; exit 1 ;;
esac
