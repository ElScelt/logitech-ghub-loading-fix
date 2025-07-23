@echo off
echo Fixing Logitech G Hub loading issue...
echo.

echo Step 1: Killing all G Hub processes...
taskkill /f /im lghub.exe >nul 2>&1
taskkill /f /im lghub_agent.exe >nul 2>&1
taskkill /f /im lghub_updater.exe >nul 2>&1
echo Done.

echo Step 2: Waiting for processes to terminate...
timeout /t 3 /nobreak >nul

echo Step 3: Starting LGHUB Updater...
start "" "C:\Program Files\LGHUB\lghub_updater.exe"
timeout /t 3 /nobreak >nul

echo Step 4: Starting LGHUB Agent...
start "" "C:\Program Files\LGHUB\lghub_agent.exe"
timeout /t 2 /nobreak >nul

echo Step 5: Starting LGHUB...  
start "" "C:\Program Files\LGHUB\lghub.exe"

echo.
echo Fix complete! G Hub should now load properly.
pause
