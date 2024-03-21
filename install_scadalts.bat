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

set "SELF=%~dp0%install_scadalts.bat"

set "SERVICE_CMD=%1"
set "SERVICE_NAME=%2"
set "RENAME=%3"
set DEFAULT_SERVICE_NAME=tomcat9
set "CATALINA_HOME2=%cd%\tomcat"

if exist "%CATALINA_HOME2%\bin\%DEFAULT_SERVICE_NAME%.exe" (
    if "x%RENAME%x" == "x--renamex" (
        cd "%CATALINA_HOME2%\bin"
        rename "%DEFAULT_SERVICE_NAME%.exe" "%SERVICE_NAME%.exe"
        rename "%DEFAULT_SERVICE_NAME%w.exe" "%SERVICE_NAME%w.exe"
        cd ..
        goto checkEnv
    )
)

rem Check the environment
:checkEnv

rem Guess CATALINA_HOME2 if not defined
if exist "%CATALINA_HOME2%\bin\%SERVICE_NAME%.exe" (
    set "EXECUTABLE=%CATALINA_HOME2%\bin\%SERVICE_NAME%.exe"
    goto okHome
)
echo Either the CATALINA_HOME environment variable is not defined correctly or
echo the incorrect service name has been used.
echo Both the CATALINA_HOME environment variable and the correct service name
echo are required to run this program.
exit /b 1
:okHome
cd "%CATALINA_HOME2%"

rem Make sure prerequisite environment variables are set
if not "%JAVA_HOME%" == "" goto gotJdkHome
if not "%JRE_HOME%" == "" goto gotJreHome
echo Neither the JAVA_HOME nor the JRE_HOME environment variable is defined
echo Service will try to guess them from the registry.
goto okJavaHome
:gotJreHome
if not exist "%JRE_HOME%\bin\java.exe" goto noJavaHome
goto okJavaHome
:gotJdkHome
if not exist "%JAVA_HOME%\bin\javac.exe" goto noJavaHome
rem Java 9 has a different directory structure
if exist "%JAVA_HOME%\jre\bin\java.exe" goto preJava9Layout
if not exist "%JAVA_HOME%\bin\java.exe" goto noJavaHome
if not "%JRE_HOME%" == "" goto okJavaHome
set "JRE_HOME=%JAVA_HOME%"
goto okJavaHome
:preJava9Layout
if not "%JRE_HOME%" == "" goto okJavaHome
set "JRE_HOME=%JAVA_HOME%\jre"
goto okJavaHome
:noJavaHome
echo The JAVA_HOME environment variable is not defined correctly
echo This environment variable is needed to run this program
echo NB: JAVA_HOME should point to a JDK not a JRE
echo But we'll ignore this error...
:okJavaHome
if not "%CATALINA_BASE%" == "" goto gotBase
set "CATALINA_BASE=%CATALINA_HOME2%"
:gotBase

rem Java 9 no longer supports the java.endorsed.dirs
rem system property. Only try to use it if
rem JAVA_ENDORSED_DIRS was explicitly set
rem or CATALINA_HOME2/endorsed exists.
set ENDORSED_PROP=ignore.endorsed.dirs
if "%JAVA_ENDORSED_DIRS%" == "" goto noEndorsedVar
set ENDORSED_PROP=java.endorsed.dirs
goto doneEndorsed
:noEndorsedVar
if not exist "%CATALINA_HOME2%\endorsed" goto doneEndorsed
set ENDORSED_PROP=java.endorsed.dirs
:doneEndorsed

rem Process the requested command
if /i %SERVICE_CMD% == install goto doInstall
if /i %SERVICE_CMD% == remove goto doRemove
if /i %SERVICE_CMD% == uninstall goto doRemove
echo Unknown parameter "%SERVICE_CMD%"
:displayUsage
echo.
echo Usage: service.bat [install|remove [service_name [--rename]]]
exit /b 1

:doRemove
rem Remove the service
echo Removing the service '%SERVICE_NAME%' ...
echo Using CATALINA_BASE:    "%CATALINA_BASE%"

"%EXECUTABLE%" //DS//%SERVICE_NAME% ^
    --LogPath "%CATALINA_BASE%\logs"
if not errorlevel 1 goto removed
echo Failed removing '%SERVICE_NAME%' service
exit /b 2
:removed
echo The service '%SERVICE_NAME%' has been removed
exit /b 0

:doInstall
rem Install the service
echo Installing the service '%SERVICE_NAME%' ...
echo Using CATALINA_HOME:    "%CATALINA_HOME2%"
echo Using CATALINA_BASE:    "%CATALINA_BASE%"
echo Using JAVA_HOME:        "%JAVA_HOME%"
echo Using JRE_HOME:         "%JRE_HOME%"

rem Try to use the server jvm
set "JVM=%JRE_HOME%\bin\server\jvm.dll"
if exist "%JVM%" goto foundJvm
rem Try to use the client jvm
set "JVM=%JRE_HOME%\bin\client\jvm.dll"
if exist "%JVM%" goto foundJvm
echo Warning: Neither 'server' nor 'client' jvm.dll was found at JRE_HOME.
set JVM=auto
:foundJvm
echo Using JVM:              "%JVM%"

set "CLASSPATH=%CATALINA_HOME2%\bin\bootstrap.jar;%CATALINA_BASE%\bin\tomcat-juli.jar"
if not "%CATALINA_HOME2%" == "%CATALINA_BASE%" set "CLASSPATH=%CLASSPATH%;%CATALINA_HOME2%\bin\tomcat-juli.jar"

if "%SERVICE_STARTUP_MODE%" == "" set SERVICE_STARTUP_MODE=manual
if "%JvmMs%" == "" set JvmMs=128
if "%JvmMx%" == "" set JvmMx=256

"%EXECUTABLE%" //IS//%SERVICE_NAME% ^
    --Description "Apache Tomcat 9.0 Server - https://tomcat.apache.org/" ^
    --DisplayName "Apache Tomcat 9.0 %SERVICE_NAME%" ^
    --Install "%EXECUTABLE%" ^
    --LogPath "%CATALINA_BASE%\logs" ^
    --StdOutput auto ^
    --StdError auto ^
    --Classpath "%CLASSPATH%" ^
    --Jvm "%JVM%" ^
    --StartMode jvm ^
    --StopMode jvm ^
    --StartPath "%CATALINA_HOME2%" ^
    --StopPath "%CATALINA_HOME2%" ^
    --StartClass org.apache.catalina.startup.Bootstrap ^
    --StopClass org.apache.catalina.startup.Bootstrap ^
    --StartParams start ^
    --StopParams stop ^
    --JvmOptions "-Dcatalina.home=%CATALINA_HOME2%;-Dcatalina.base=%CATALINA_BASE%;-D%ENDORSED_PROP%=%CATALINA_HOME2%\endorsed;-Djava.io.tmpdir=%CATALINA_BASE%\temp;-Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager;-Djava.util.logging.config.file=%CATALINA_BASE%\conf\logging.properties;%JvmArgs%" ^
    --JvmOptions9 "--add-opens=java.base/java.lang=ALL-UNNAMED#--add-opens=java.base/java.io=ALL-UNNAMED#--add-opens=java.base/java.util=ALL-UNNAMED#--add-opens=java.base/java.util.concurrent=ALL-UNNAMED#--add-opens=java.rmi/sun.rmi.transport=ALL-UNNAMED" ^
    --Startup "%SERVICE_STARTUP_MODE%" ^
    --JvmMs "%JvmMs%" ^
    --JvmMx "%JvmMx%"
if not errorlevel 1 goto installed
echo Failed installing '%SERVICE_NAME%' service
exit /b 3
:installed
echo The service '%SERVICE_NAME%' has been installed.
exit /b 0
