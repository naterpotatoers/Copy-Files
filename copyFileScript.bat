@echo off
@REM This script will copy the following template files a specified number of times.

call:copyTemplateFileNumberOfTimes "1915i" 2
call:copyTemplateFileNumberOfTimes "1915i_SIR" 2
call:copyTemplateFileNumberOfTimes "MW" 2
call:copyTemplateFileNumberOfTimes "NE" 2
call:copyTemplateFileNumberOfTimes "NE_SD" 2
call:copyTemplateFileNumberOfTimes "SDP" 2
call:copyTemplateFileNumberOfTimes "SIR" 2
call:copyTemplateFileNumberOfTimes "TERM" 2
goto:eof

:copyTemplateFileNumberOfTimes <filePrefix> <numberOfTimesToCopy>
SET "ORIGINAL_FILE_NAME=2024-Audit-Email-Template-%~1.docx"

if not exist "%ORIGINAL_FILE_NAME%" (
    echo "Cannot find %ORIGINAL_FILE_NAME%"
    goto:eof
)

for /l %%i in (1,1,%~2) do (
    if not exist "2024-Audit-Email-%~1-%%i.docx" (
        copy "%ORIGINAL_FILE_NAME%" "2024-Audit-Email-%~1-%%i.docx"
    )
)
goto:eof