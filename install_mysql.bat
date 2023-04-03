@echo off
rem Licensed to the Apache Software Foundation (ASF) under one or more
rem contributor license agreements.  See the NOTICE file distributed with
rem this work for additional information regarding copyright ownership.
rem The ASF licenses this file to You under the Apache License, Version 2.0
rem (the "License"); you may not use this file except in compliance with
rem the License.  You may obtain a copy of the License at
rem
rem     http://www.apache.org/licenses/LICENSE-2.0
rem
rem Unless required by applicable law or agreed to in writing, software
rem distributed under the License is distributed on an "AS IS" BASIS,
rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
rem See the License for the specific language governing permissions and
rem limitations under the License.

rem ---------------------------------------------------------------------------
rem NT Service Install/Uninstall script
rem
rem Usage: service.bat install/remove [service_name [--rename]] [--user username]
rem
rem Options
rem install                 Install the service using default settings.
rem remove                  Remove the service from the system.
rem
rem service_name (optional) The name to use for the service. If not specified,
rem                         Tomcat9 is used as the service name.
rem
rem --rename     (optional) Rename tomcat9.exe and tomcat9w.exe to match
rem                         the non-default service name.
rem
rem username     (optional) The name of the OS user to use to install/remove
rem                         the service (not the name of the OS user the
rem                         service will run as). If not specified, the current
rem                         user is used.
rem ---------------------------------------------------------------------------

setlocal

set "SELF=%~dp0%install_mysql.bat"

set DEFAULT_SERVICE_NAME=%2
set SERVICE_NAME=%DEFAULT_SERVICE_NAME%
set "EXECUTABLE=%cd%\mysqld.exe"
cd ..
set "MYSQL_HOME=%cd%"

:doneEndorsed
rem Process the requested command
if /i %1 == install goto doInstall
if /i %1 == remove goto doRemove
if /i %1 == uninstall goto doRemove
echo Unknown parameter "%SERVICE_CMD%"
:displayUsage
echo.
echo Usage: service.bat install/remove [service_name [--rename]] [--user username]
exit /b 1

:doRemove
rem Remove the service
echo Removing the service '%SERVICE_NAME%' ...

sc stop %SERVICE_NAME%
sc delete %SERVICE_NAME%

if not errorlevel 1 goto removed
echo Failed removing '%SERVICE_NAME%' service
exit /b 1
:removed
echo The service '%SERVICE_NAME%' has been removed
exit /b 0

:doInstall
rem Install the service
echo Installing the service '%SERVICE_NAME%' ...
"%MYSQL_HOME%"\my_init.bat && "%EXECUTABLE%" --install %SERVICE_NAME%
if not errorlevel 1 goto installed
echo Failed installing '%SERVICE_NAME%' service
exit /b 1
:installed
echo The service '%SERVICE_NAME%' has been installed.
exit /b 0
