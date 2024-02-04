@echo off
@REM This script will copy the specified files a specified number of times.

call:copyFileNumberOfTimes "1915i" 2
call:copyFileNumberOfTimes "1915i_SIR" 2
call:copyFileNumberOfTimes "MW" 2
call:copyFileNumberOfTimes "NE" 2
call:copyFileNumberOfTimes "NE_SD" 2
call:copyFileNumberOfTimes "SDP" 2
call:copyFileNumberOfTimes "SIR" 2
call:copyFileNumberOfTimes "TERM" 2
goto:eof

:copyFileNumberOfTimes
SET "ORIGINAL_FILE_NAME=%~1-0-Audit_Email_2024.docx"

for /l %%i in (1,1,%~2) do (
    if not exist "%~1-%%i-Audit_Email_2024.docx" (
        copy "%ORIGINAL_FILE_NAME%" "%~1-%%i-Audit_Email_2024.docx"
    )
)
goto:eof