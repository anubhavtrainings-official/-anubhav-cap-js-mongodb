@echo off
setlocal

if "%~1"=="" (
    echo Usage: gitpush "Your commit message"
    exit /b 1
)

git add .
if errorlevel 1 exit /b 1

git commit -m "%*"
if errorlevel 1 exit /b 1

git push -u origin main
if errorlevel 1 exit /b 1

echo.
echo Successfully committed and pushed to GitHub!
endlocal