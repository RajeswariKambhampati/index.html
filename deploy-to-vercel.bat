@echo off
echo Cadbury Gifting Website - Vercel Deployment Helper
echo ===============================================
echo.

echo 1. Checking if Git is initialized...
if not exist .git (
  echo Initializing Git repository...
  git init
  git add .
  git commit -m "Initial commit"
  echo Git repository initialized.
) else (
  echo Git repository already exists.
)

echo.
echo 2. Checking if Vercel CLI is installed...
vercel --version >nul 2>&1
if %errorlevel% neq 0 (
  echo Vercel CLI is not installed. Installing...
  echo You may need to provide administrator permission.
  npm install -g vercel
) else (
  echo Vercel CLI is already installed.
)

echo.
echo 3. Ready to deploy to Vercel!
echo.
echo Run the following command to deploy:
echo   vercel
echo.
echo Or visit https://vercel.com to deploy through the web dashboard
echo.
echo Press any key to continue...
pause >nul 