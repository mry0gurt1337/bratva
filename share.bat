@echo off
chcp 65001 >nul
where cloudflared >nul 2>nul || (echo Нужен cloudflared: winget install Cloudflare.cloudflared & pause & exit /b)
echo Ищи в выводе ссылку https://....trycloudflare.com и кидай друзьям
cloudflared tunnel --url http://localhost:3000
pause
