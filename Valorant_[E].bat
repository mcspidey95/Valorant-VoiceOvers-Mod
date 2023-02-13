@echo off

copy /y "Japanesu\*.*" "C:\Riot Games\VALORANT\live\ShooterGame\Content\Paks"

start "" "C:\Riot Games\Riot Client\RiotClientServices.exe" --launch-product=valorant --launch-patchline=live"

:loop
powershell -Command "(Get-Process | Where-Object { $_.MainWindowTitle -eq 'Riot Client Main' }).Count" | find /I /N "1">NUL
if "%ERRORLEVEL%"=="0" (
    timeout /t 2 > NUL
    copy /y "Engrishu\*.*" "C:\Riot Games\VALORANT\live\ShooterGame\Content\Paks"
) else (
timeout /t 2 >NUL
goto loop
)



