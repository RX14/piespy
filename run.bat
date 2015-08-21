@echo off
if not exist "build\libs\PieSpy-*-all.jar" (
    gradlew build
    echo You may have to run run.bat again... #BlameWindows
)

for /f %%i in ('dir /b build\libs\PieSpy-*-all.jar') do set JAR_FILE=%%i
java -jar build\libs\%JAR_FILE% ./config.ini
pause
echo on
