@echo off
SETLOCAL
set DATADIR="data"
set MY_LNG="share/english"
set USER="root"

IF EXIST data rm -R data

echo %DATADIR%
mkdir data
cd bin
mysqld --datadir %DATADIR% --initialize-insecure --user=%USER% --language=%MY_LNG% --extra-sql-file=scadalts.sql