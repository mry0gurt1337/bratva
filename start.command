#!/usr/bin/env bash
cd "$(dirname "$0")"
command -v node >/dev/null || { echo "Node.js не найден. Поставь LTS с https://nodejs.org"; exit 1; }
[ -d node_modules ] || npm install --omit=dev --no-audit --no-fund
node server.js
