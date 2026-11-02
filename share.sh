#!/usr/bin/env bash
command -v cloudflared >/dev/null || { echo "Нужен cloudflared: brew install cloudflared"; exit 1; }
echo "Ищи в выводе ссылку https://....trycloudflare.com и кидай друзьям"
cloudflared tunnel --url http://localhost:3000
