@echo off
setlocal enabledelayedexpansion

set "SCRIPT_DIR=%~dp0"
cd /d "%SCRIPT_DIR%\..\.."

set "BIN_NAME=mhr-cfw-go.exe"

echo ========================================
echo  MHR-CFW Go Builder (Windows)
echo ========================================
echo.

if not exist "go.mod" (
  echo Error: go.mod not found. Make sure you are in the project directory.
  exit /b 1
)

echo Building %BIN_NAME%...
echo.

go build -ldflags "-s -w" -o "%BIN_NAME%" ./cmd/mhr-cfw

echo.
echo Build successful: %BIN_NAME%
echo Done! Run with: %BIN_NAME%

