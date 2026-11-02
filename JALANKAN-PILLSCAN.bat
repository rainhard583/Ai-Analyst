@echo off
cd /d "%~dp0"
echo Menjalankan PillScan AI...
if not exist node_modules (echo Menginstal dependency... & call npm install)
call npm start
pause
