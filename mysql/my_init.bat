@echo off
SETLOCAL
set DATADIR="%cd%\data"
set MY_LNG="english"
set USER="root"
set INIT_SCHEMA_PATH="%cd%\scadalts.sql"
rem set FILE_SQL="%cd%\scadalts_dump.sql"
set MY_INI="%cd%\my.ini"
set BIN_PATH="%cd%\bin"

if not exist data\ (
    echo %DATADIR%
    echo %INIT_SCHEMA_PATH%
    xcopy /x /f /y %MY_INI% %BIN_PATH%
    cd %BIN_PATH%
    mysqld --defaults-file=my.ini --datadir %DATADIR% --initialize-insecure --user=%USER% --language=%MY_LNG% --init-file=%INIT_SCHEMA_PATH% --console
    rem & start mysqld & timeout /t 20 & mysql -u root -P 3309 scadalts < %FILE_SQL%
)

