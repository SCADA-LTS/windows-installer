@echo off
SETLOCAL
set DATADIR="data"
set MY_LNG="english"
set USER="root"
set INIT_SCHEMA_PATH="%cd%\scadalts.sql"

IF EXIST data rm -R data

echo %DATADIR%
echo %INIT_SCHEMA_PATH%

mkdir data
cd bin
mysqld --datadir %DATADIR% --initialize-insecure --user=%USER% --language=%MY_LNG% --init-file=%INIT_SCHEMA_PATH% --console