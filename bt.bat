@echo off

title BT v0.0.2 alpha

:: There can be typos. My english isin't the best

::                        v0.0.2 alpha

:: --------------------------------------------------------------------

::       #   # ##### #   #    ##### #   # ##### ####  ##### # 
::       #   # #      # #       #   #   # #     #   # #     # 
::       ##### ####    #        #   ##### ####  ####  ####  # 
::       #   # #       #        #   #   # #     #  #  #       
::       #   # #####   #        #   #   # ##### #   # ##### #
::                Trust me there are no viruses

:: ---------------------------------------------------------------------

:: If you detect any bugs please report them to me :

:: GitHub project: https://github.com/TitasB2/Batch-Tools/issues/new (this takes to creating a new issue directly)
:: Github account: https://github.com/TitasB2

:: These are just for copying I am lazy
:: And I don't really wanna waste time

REM if "%inp%"==""

REM Google (8.8.8.8) max can ping back 1472 bytes

REM %c%[33m   Yellow
REM %c%[32m   Green
REM %c%[31m   Red
REM %c%[34m   Dark blue
REM %c%[35m   Purple
REM %c%[36m   Light blue

setlocal enabledelayedexpansion
:: Display symbols correctly
chcp 65001 >nul
:: Make a variuble for colors
for /f %%a in ('echo prompt $E^| cmd') do set "c=%%a"

powershell "Start-Sleep -Seconds 0"
:main

set "inp="
set "cmd="
set "arg="

cls

echo ===============================================
echo.
echo                      %c%[33mB%c%[31mT%c%[0m
echo                  %c%[33mBatch %c%[31mTools%c%[0m
echo. 
echo ===============================================
echo.
set /p inp=%cd%\BT^>

if "%inp%"=="help" goto help
if "%inp%"=="BT" goto help
if "%inp%"=="bt" goto help 
if "%inp%"=="h" goto help
if "%inp%"=="?" goto help
if "%inp%"=="cls" cls & pause & goto main
if "%inp%"=="clear" cls & pause & goto main
:: Got lazy here 
REM if "%inp%"=="flushdns" ipconfig /flushdns || ( echo Something went wrong && pause ) & goto main
if "%inp%"=="flushdns" ipconfig /flushdns & pause & goto main
if "%inp%"=="ipconfig" goto ipconfig 
if "%inp%"=="ipcnfg" goto ipconfig
if "%inp%"=="exit" goto :exit
if "%inp%"=="switchusers" tsdiscon
if "%inp%"=="lock" rundll32.exe user32.dll,LockWorkStation & pause & goto main
if "%inp%"=="lockpc" rundll32.exe user32.dll,LockWorkStation & pause & goto main
if "%inp%"=="lkpc" rundll32.exe user32.dll,LockWorkStation & pause & goto main
if "%inp%"=="lk" rundll32.exe user32.dll,LockWorkStation & pause & goto main
if "%inp%"=="turnoff" shutdown /t 0 & pause & goto main
if "%inp%"=="trnoff" shutdown /t 0 & pause & goto main
if "%inp%"=="shutdown" shutdown /t 0 & pause & goto main
if "%inp%"=="shtdwn"  shutdown /t 0 & pause & goto main
if "%inp%"=="signout" shutdown /l
if "%inp%"=="sgnout" shutdown /l
if "%inp%"=="logout" shutdown /l
if "%inp%"=="lgout" shutdown /l
if "%inp%"=="restart" shutdown /r /t 0 & pause & goto main
if "%inp%"=="rstr" shutdown /r /t 0 & pause & goto main
if "%inp%"=="rst" shutdown /r /t 0 & pause & goto main
if "%inp%"=="hibernate" shutdown /h
if "%inp%"=="hibrnte" shutdown /h
if "%inp%"=="hbrnte" shutdown /h
if "%inp%"=="bt --version" goto version
if "%inp%"=="BT --version" goto version
if "%inp%"=="bt --v" goto version
if "%inp%"=="BT --v" goto version
if "%inp%"=="cleanup" goto cleanup
if "%inp%"=="clnup" goto cleanup
if "%inp%"=="clnp" goto cleanup
if "%inp%"=="clean" goto cleanup
if "%inp%"=="cln" goto cleanup
if "%inp%"=="myip" goto myip
if "%inp%"=="mip" goto myip
if "%inp%"=="ip" goto myip
if "%inp%"=="sleep" rundll32.exe powrprof.dll,SetSuspendState 0,1,0 & pause & goto main
if "%inp%"=="slp" rundll32.exe powrprof.dll,SetSuspendState 0,1,0 & pause & goto main
if "%inp%"=="uptime" net stats workstation | find "since" & pause & goto main
if "%inp%"=="uptme" net stats workstation | find "since" & pause & goto main
if "%inp%"=="ptime" net stats workstation | find "since" & pause & goto main
if "%inp%"=="ptme" net stats workstation | find "since" & pause & goto main
if "%inp%"=="whoami" whoami /all & pause & goto main
if "%inp%"=="whomi" whoami /all & pause & goto main
if "%inp%"=="whmi" whoami /all & pause & goto main
if "%inp%"=="wmi" whoami /all & pause & goto main
if "%inp%"=="dir" dir & pause & goto main
if "%inp%"=="dir /d" dir /d & pause & goto main
if "%inp%"=="dir /w" dir /w & pause & goto main
if "%inp%"=="dir /?" goto dir?
if "%inp%"=="systeminfo" systeminfo & pause & goto main
if "%inp%"=="sysinf" systeminfo & pause & goto main
if "%inp%"=="sinf" systeminfo & pause & goto main
if "%inp%"=="ping" goto :ping
if "%inp%"=="ping -f" goto :ping
if "%inp%"=="ping -n" goto ping-n
if "%inp%"=="ping -6" goto ping6
if "%inp%"=="ping -4" goto ping4
if "%inp%"=="ping /?" goto ping?
if "%inp%"=="info" goto info
:: if "%inp%"=="speedtest" speedtest & pause & goto main
:: if "%inp%"=="spdtest" speedtest & pause & goto main
:: if "%inp%"=="spdtst" speedtest & pause & goto main

for /f "tokens=1* delims= " %%a in ("%inp%") do (
set "cmd="
set "arg="
for /f "tokens=1* delims= " %%a in ("%inp%") do (
    set "cmd=%%a"
    set "arg=%%b"
)
)

if "!cmd!"=="open" (
    if exist "!arg!" (
        start "" "!arg!"
    ) else (
        echo %c%[33mB%c%[31mT%c%[0m: %c%[31mFile or folder not found in current directory%c%[0m
    )
    pause
    goto main
)

if "%inp%"=="rename" (
    dir /d
    set /p oldname=Enter file/folder to rename: 
    set /p newname=Enter new name: 
    ren "!oldname!" "!newname!"
    goto main
)

if "%inp%"=="ren" (
    dir /d
    set /p oldname=Enter file/folder to rename: 
    set /p newname=Enter new name: 
    ren "!oldname!" "!newname!"
    goto main
)

:: cd

if "!cmd!"=="cd" (
    if "!arg!"=="" (
        echo %c%[33mB%c%[31mT%c%[0m: Usage: cd ^<path^>
    ) else (
        if exist "!arg!" (
            cd /d "!arg!"
            echo Changed directory to: %cd%
        ) else (
            echo %c%[33mB%c%[31mT%c%[0m: %c%[31mFolder not found%c%[0m: !arg!
            powershell -Command "& { Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Error; $notify.Visible = $true; $notify.ShowBalloonTip(5000, 'Batch Tools', 'Directory not found.', [System.Windows.Forms.ToolTipIcon]::Error); Start-Sleep -Seconds 1; $notify.Dispose() }"

        )
    )
    pause
    goto main
)

echo %c%[33mB%c%[31mT%c%[0m: %c%[31mUnrecognised command%c%[0m

pause
goto main

:help

echo.
:: Help
echo help/BT/bt/h/?: displays this help page

:: dir
echo dir: displays a list of files and subdirectories in a directory

:: dir?
echo dir /?: displays help for dir

:: Version
echo bt --version/BT --version/bt --v/BT --v: displays the current bt version you have installed

:: cls
echo clear/cls: clear terminal

:: flushdns
echo flushdns: deletes cashed dns

:: ipconfig
echo ipconfig/ipcnfg: network information

:: logout
echo logout/lgout, signout/sgnout: sign out of current account*

:: lockpc
echo lockpc/lock/lkpc/lk: locks your pc

::shutdown
echo turnoff/trnoff, shutdown/shtdown/shtdwn: turns off your pc*

:: restart
echo restart/rsrt/rst: restarts pc*

:: hibernate
echo hibernate/hibrnte/hbrnte: hibernates*

:: folder open
echo open ^<folder/file^>: opens a typed folder/file if it exists in the foler BT is opened

:: rename
echo rename/ren: renames a folder/file if it exists in the foler BT is opened*

:: cleanup
echo cleanp/clean/cln/clnup/clnp: deletes jusk/temporary files

:: my ip
echo myip/mip/ip: displays your local ipv4 and ipv6

:: up time
echo uptime/uptme/ptime/ptme: shows when your pc was booted

:: who am i
echo whoami/whomi/whmi/wmi: displays your information (run as administrator for more info)

:: system info
echo systeminfo/sysinf/sinf: displays system info

:: ping
echo ping: ping an ipv4 adress

:: ping /?
echo ping /?: displays help for ping

:: info
echo info: displays all the information about BT

echo.
echo %c%[31m^* - didin't test yet%c%[0m
echo Press any key to go back . . .

pause >nul
goto main

:version

echo.
echo Current %c%[33mB%c%[31mT%c%[0m version
echo v0.0.2 alpha

echo Press any key to go back...
pause >nul
goto main

:info
cls

echo.
echo There can be typos. My english isin't the best
echo.
echo                         v0.0.2 alpha
echo.
echo --------------------------------------------------------------------
echo.
echo       #   # ##### #   #    ##### #   # ##### ####  ##### # 
echo       #   # #      # #       #   #   # #     #   # #     # 
echo       ##### ####    #        #   ##### ####  ####  ####  # 
echo       #   # #       #        #   #   # #     #  #  #       
echo       #   # #####   #        #   #   # ##### #   # ##### #
echo                 Trust me there are no viruses
echo.
echo ---------------------------------------------------------------------
echo If you don't want to use or don't trust this tool you can close this window
echo.
echo If you detect any bugs please report them to me :
echo.
echo GitHub project: https://github.com/TitasB2/Batch-Tools/issues/new (this takes to creating a new issue directly)
echo Github account: https://github.com/TitasB2
echo.
echo Read README.md, go to https://github.com/TitasB2/Batch-Tools/ or contact me https://github.com/TitasB2/ for more information.
echo.
echo Please star my project if you like it I put hard work
echo https://github.com/TitasB2/Batch-Tools/
echo.
echo Made with %c%[31m♥%c%[0m by Titas
echo Press any key to go back . . .
pause >nul
goto main

:ipconfig

ipconfig
echo.
echo Press any key to go back . . .
pause >nul
goto main

:cleanup

if "%temp%"=="" goto main
echo %c%[33mB%c%[31mT%c%[0m: This will delete junk/temp files.
echo.
echo Are you sure? (Y/N)
set /p cleanup=

if "%cleanup%"=="Y" goto cleanup.continue
if "%cleanup%"=="y" goto cleanup.continue
if "%cleanup%"=="N" goto cleanup.cancel
if "%cleanup%"=="n" goto cleanup.cancel

echo Please type Y/N
echo Press any key to go back . . .

pause >nul
goto main

:cleanup.continue

del /q /f /s %temp%\*
echo.
echo Done.
powershell -Command "& { Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(5000, 'Batch Tools', 'Done cleaning temp files.', [System.Windows.Forms.ToolTipIcon]::Info); Start-Sleep -Seconds 1; $notify.Dispose() }"
echo Press any key to go back . . .
pause >nul
goto main

:cleanup.cancel

echo Cleanup canceled.
powershell -Command "& { Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Error; $notify.Visible = $true; $notify.ShowBalloonTip(5000, 'Batch Tools', 'Cleanup canceled.', [System.Windows.Forms.ToolTipIcon]::Error); Start-Sleep -Seconds 1; $notify.Dispose() }"
echo Press any key to go back . . .
pause >nul
goto main

:myip

echo.
echo Local IP (IPv4):
ipconfig | findstr /i "IPv4"
echo.
echo IPv6
ipconfig | findstr /i "IPv6"
:: echo Public IP:
:: curl -s ifconfig.me
:: echo.
:: echo.
echo Press any key to go back . . .
pause >nul
goto main

:dir?

echo.
echo Displays a list of files and subdirectories in a directory.
echo.
echo /d Same as wide but files are list sorted by column.
echo /w Uses wide list format.
echo.

echo Press any key to go back . . .
pause >nul
goto main

:ping

set /p pingip=Enter the IP you want to ping: 
if "%pingip%"=="" echo Please enter an IP address . . . & cls & goto :ping
echo.
echo Press any key to start . . .
pause >nul

ping -f %pingip%

pause
goto main

:ping-n

set /p pingip_n=Enter the IP you want to ping:
if "%pingip_n%"=="" echo Please enter an IP address . . . & cls & goto ping-n
echo.
echo Press any key to start . . .
pause >nul

ping -n %pingip_n%

pause
goto main

:ping4

set /p pingip_n=Enter the IP you want to ping:
if "%pingip_4%"=="" echo Please enter an IP address . . . & cls & goto ping4
echo.
echo Press any key to start . . .
pause >nul

ping -n %pingip_4%

pause
goto main

:ping6

set /p pingip_n=Enter the IP you want to ping:
if "%pingip_6%"=="" echo Please enter an IP address . . . & cls & goto ping6
echo.
echo Press any key to start . . .
pause >nul

ping -n %pingip_6%

pause
goto main

:ping?

echo  -f        Set Don't Fragment flag in packet (IPv4-only).
echo  -n count  Number of echo requests to send (1-255).
echo  -4        Force using IPv4.
echo  -6        Force using IPv6.

echo Press any key to go back . . .
pause
goto main

:exit
exit

pause