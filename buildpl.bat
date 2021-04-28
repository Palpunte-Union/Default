@echo off

set WDIR=%EXEC_DIR%
IF EXIST "%WDIR%"\.mvn goto maven
IF EXIST "%WDIR%"\gradle goto gradle

exit

:maven
call mavenw %*
exit

:gradle
call gradlew %*
exit