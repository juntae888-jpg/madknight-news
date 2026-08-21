@echo off
setlocal
cd /d "%~dp0"
echo === MadKnight news : push to GitHub ===
where git >nul 2>nul
if errorlevel 1 (
  echo [ERROR] git is not installed. Install from https://git-scm.com/download/win
  pause
  exit /b 1
)
if not exist .git (
  git init
)
git add -A
git commit -m "MadKnight news site (2026-08-20)"
git branch -M main
git remote remove origin >nul 2>nul
git remote add origin https://github.com/juntae888-jpg/madknight-news.git
git push -u origin main
if errorlevel 1 (
  echo.
  echo [ERROR] Push failed. If a login window did not appear, sign in to GitHub
  echo         via Git Credential Manager and run this script again.
) else (
  echo.
  echo [OK] Pushed. Next steps:
  echo   1. GitHub repo Settings - Pages - Branch: main / root - Save
  echo   2. Settings - Secrets and variables - Actions - add DISCORD_WEBHOOK
  echo   3. Actions tab - "Post briefing to Discord" - Run workflow
)
pause
