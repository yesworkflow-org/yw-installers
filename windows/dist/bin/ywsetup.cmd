@echo off

REM Determine location of YesWorkflow installation by (1) setting the working directory
REM to the parent of the directory containing this CMD file, (2) storing the 
REM new working directory to the YW_HOME variable, and (3) restoring the previous 
REM working directory.
pushd
cd %~sdp0\..
set YW_HOME=%cd%
popd

REM Store the location of the YesWorkflow jar
set YW_JAR=%YW_HOME%\app\yesworkflow-0.2.1.2.jar

REM Store the location of the bundled JRE distribution
set JAVA_HOME=%YW_HOME%\jre

REM Store the location of the bundled Java executable
set JAVA_CMD=%JAVA_HOME%\bin\java
