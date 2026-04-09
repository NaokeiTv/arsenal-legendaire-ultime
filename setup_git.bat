@echo off
echo ==========================================
echo    SETUP GIT - ARSENAL LEGENDAIRE
echo ==========================================

echo.
echo [1/6] Suppression de l'ancien depot Git...
if exist .git rmdir /s /q .git
echo OK

echo.
echo [2/6] Nettoyage des caches Gradle...
if exist .gradle rmdir /s /q .gradle
if exist build rmdir /s /q build
if exist .loom-cache rmdir /s /q .loom-cache
echo OK

echo.
echo [3/6] Creation du .gitignore...
(
echo # Gradle
echo .gradle/
echo build/
echo !gradle/wrapper/gradle-wrapper.jar
echo !gradle/wrapper/gradle-wrapper.properties
echo.
echo # Loom Cache
echo .loom-cache/
echo loom-cache/
echo .fabric/
echo.
echo # IDE
echo .idea/
echo *.iml
echo .vscode/
echo .classpath
echo .project
echo .settings/
echo bin/
echo.
echo # OS
echo .DS_Store
echo Thumbs.db
echo *.log
echo *.lock
echo.
echo # Minecraft
echo run/
echo logs/
echo crash-reports/
) > .gitignore
echo OK

echo.
echo [4/6] Initialisation du depot Git...
git init
echo OK

echo.
echo [5/6] Ajout des fichiers...
git add .
echo OK

echo.
echo [6/6] Premier commit...
git commit -m "Initial commit - Arsenal Legendaire Ultime"
echo OK

echo.
echo ==========================================
echo    SETUP TERMINE AVEC SUCCES !
echo ==========================================
echo.
echo Prochaine etape :
echo   git remote add origin https://github.com/VOTRE-COMPTE/arsenal-legendaire-ultime.git
echo   git push -u origin main
echo.
pause