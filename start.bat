@echo off
chcp 65001 >nul
title BRATVA server
cd /d "%~dp0"
where node >nul 2>nul || (echo Node.js не найден. Поставь LTS с https://nodejs.org и запусти снова. & pause & exit /b)
if not exist node_modules (echo Ставлю зависимости, это один раз... & call npm install --omit=dev --no-audit --no-fund)
node server.js
pause
