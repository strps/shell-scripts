@echo off
:: This script adds the current directory to the PATH environment variable

:: Get the current directory
set "scriptDir=%~dp0"

:: Remove trailing backslash if it exists
if "%scriptDir:~-1%" == "\" set "scriptDir=%scriptDir:~0,-1%"

:: Add the current directory to the PATH environment variable
setx PATH "%PATH%;%scriptDir%"

echo The current directory has been added to the PATH environment variable.
echo You can now call your scripts directly by name from any command prompt.
pause
