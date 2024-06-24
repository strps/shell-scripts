@echo off
::nb(new branch) This script creates a new branch based on user input, sets the upstream for the branch, and switches to the new branch.

:: Get the branch name from the user
set /p branchName="Enter the new branch name: "

:: Navigate to the repository directory (optional, remove if already in the repo directory)
:: cd path\to\your\repository

:: Create a new branch
git checkout -b %branchName%
:: Check if the branch was created successfully
if %errorlevel% neq 0 (
    echo Branch creation failed. Please try again.
    exit /b
)

:: Set the upstream for the new branch
git push --set-upstream origin %branchName%
:: Check if the upstream was set successfully
if %errorlevel% neq 0 (
    echo Upstream set failed. Please try again.
    exit /b
)

echo New branch '%branchName%' created and upstream set successfully.
