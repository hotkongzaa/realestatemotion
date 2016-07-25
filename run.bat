@ECHO OFF
setlocal enableextensions enabledelayedexpansion
set /p pathParam="Please enter project path:"
ECHO Path enter %pathParam%

IF %pathParam% EQU "" GOTO SetToPath

:SetToPath
ECHO Path is not empty set to Paht: %pathParam%
call cd %pathParam% || GOTO EOF
GOTO StartCommand

:StartCommand
ECHO ==============================================
ECHO == Using command Gulp for build dist ===
ECHO ==============================================
call gulp
ECHO ==========================================
ECHO == Set to dist and using Serve command ===
ECHO ==========================================
call cd dist/
call serve
call cd ../

:EOF
pause