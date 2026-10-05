@echo off
set JENKINS_NODE_COOKIE=dontKillMe
set BUILD_ID=dontKillMe
for /f "tokens=5" %%a in ('netstat -aon ^| findstr :8081 ^| findstr LISTENING') do taskkill /F /PID %%a
start /B npx http-server ./src -p 8081
