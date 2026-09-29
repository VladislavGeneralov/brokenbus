@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo.
echo  Мобильная версия BROKEN17. Откройте на телефоне (та же Wi-Fi сеть, что у компьютера):
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /R /C:"IPv4"') do for /f "tokens=* delims= " %%b in ("%%a") do echo    http://%%b:8018/
echo.
echo  Окно не закрывайте, пока играете. Если Windows спросит про доступ Python к сети — разрешите для частных сетей.
echo.
start "" http://localhost:8018/
python -m http.server 8018 --bind 0.0.0.0
