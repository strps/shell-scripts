@echo off
::cnp (commit n push) This script adds all changes, commits them with a user-provided message, and pushes the changes to the remote repository.

:: Get the commit message from the user
set /p commitMsg="Enter the commit message: "

:: Add all changes
git add .
:: Check if there are any changes to commit
if %errorlevel% neq 0 (
    echo No changes to commit. Exiting script.
    exit /b
)

:: Commit with the provided message
git commit -m "%commitMsg%"
:: Check if the commit was successful
if %errorlevel% neq 0 (
    echo Commit failed. Please try again.
    exit /b
)

:: Push the changes
git push
:: Check if the push was successful
if %errorlevel% neq 0 (
    echo Push failed. Please try again.
    exit /b
)

echo Changes committed and pushed successfully.
