@echo off
::cnp (commit n push) This script adds all changes, commits them with a user-provided message, and pushes the changes to the remote repository.

:: Get the commit message from the user
set /p commitMsg="Enter the commit message: "

:: Navigate to the repository directory (optional, remove if already in the repo directory)
:: cd path\to\your\repository

:: Add all changes
git add .

:: Commit with the provided message
git commit -m "%commitMsg%"

:: Push the changes
git push

echo Changes committed and pushed successfully.
pause
