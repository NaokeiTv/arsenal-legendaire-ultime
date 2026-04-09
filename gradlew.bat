@echo off
setlocal
set JAVA_CMD=java
where java >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Java not found in PATH
    exit /b 1
)
set CLASSPATH=%~dp0gradle\wrapper\gradle-wrapper.jar
"%JAVA_CMD%" -Xmx6G -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %*
endlocal
