
@echo off

REM Set variables needed to run YesWorkflow
call %~sdp0\ywsetup.cmd

REM Run the YW executable jar with the argumements passed to this CMD file
%JAVA_CMD% -jar %YW_JAR% %*
