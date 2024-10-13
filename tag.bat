@echo off
setlocal EnableDelayedExpansion

echo commit_message:
set /p commit_message=

echo tag_version:
set /p tag_version=

git add .

git commit -m "%commit_message%"

git push origin HEAD -u

git tag %tag_version%

git push origin %tag_version%

endlocal