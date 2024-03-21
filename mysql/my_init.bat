@echo off
SETLOCAL
set CURRENT_PATH=%~1
echo %CURRENT_PATH%
set DATADIR=%CURRENT_PATH%\data
set MY_LNG="english"
set USER="root"
set INIT_SCHEMA_PATH=%CURRENT_PATH%\scadalts.sql
rem set FILE_SQL=%CURRENT_PATH%\scadalts_dump.sql
set MY_INI=%CURRENT_PATH%\my.ini
set BIN_PATH=%CURRENT_PATH%\bin

if not exist data\ (
    echo %DATADIR%
    echo %INIT_SCHEMA_PATH%
    xcopy /x /f /y %MY_INI% %BIN_PATH%
    cd "%BIN_PATH%"
    mysqld --defaults-file="%MY_INI%" --datadir "%DATADIR%" --initialize-insecure --user=%USER% --language=%MY_LNG% --init-file="%INIT_SCHEMA_PATH%" --console
    rem & start mysqld & timeout /t 20 & mysql --user root --port <port-mysql> --database scadalts < "%FILE_SQL%"
)

