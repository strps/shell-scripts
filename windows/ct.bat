@echo off
:: This script helps the user create a commit message following a specific template and commits the changes to the repository.

:: Get the commit title from the user
echo Enter the commit title (short, imperative sentence):
set /p commitTitle=

:: Get the commit description from the user
echo Enter the commit description (optional, press Enter to skip):
set /p commitDescription=

:: Get the ticket or issue number from the user
echo Enter the ticket or issue number (if applicable, press Enter to skip):
set /p ticketNumber=

:: Navigate to the repository directory (optional, remove if already in the repo directory)
:: cd path\to\your\repository

:: Add all changes
git add .

:: Form the commit message
set commitMsg=%commitTitle%
if not "%commitDescription%"=="" set commitMsg=%commitMsg%^%nl%%nl%%commitDescription%
if not "%ticketNumber%"=="" set commitMsg=%commitMsg%^%nl%%nl%Fixes %ticketNumber%

:: Commit with the provided message
git commit -m "%commitMsg%" 
:: Check if the commit was successful
if %errorlevel% neq 0 (
    echo Commit failed. Please try again.
    pause
    exit /b
)

:: Push the changes
git push
:: Check if the push was successful
if %errorlevel% neq 0 (
    echo Push failed. Please try again.
    pause
    exit /b
)

echo Changes committed and pushed successfully.
