@echo off
@REM This script will copy the specified files a specified number of times.

call:copyFileSpecifiedNumberOfTimes "1915i" 2
call:copyFileSpecifiedNumberOfTimes "1915i SIR" 2
call:copyFileSpecifiedNumberOfTimes "MW" 2
call:copyFileSpecifiedNumberOfTimes "NE" 2
call:copyFileSpecifiedNumberOfTimes "NE SD" 2
call:copyFileSpecifiedNumberOfTimes "SDP" 2
call:copyFileSpecifiedNumberOfTimes "SIR" 2
call:copyFileSpecifiedNumberOfTimes "TERM" 2
goto:eof

:copyFileSpecifiedNumberOfTimes
SET "ORIGINAL_FILE_NAME=%~1-0-Audit_Email_2024.docx"

for /l %%i in (1,1,%~2) do (
    if not exist "%~1-%%i-Audit_Email_2024.docx" (
        copy "%ORIGINAL_FILE_NAME%" "%~1-%%i-Audit_Email_2024.docx"
    )
)
goto:eof