@echo off

set "VERSION=0.0.4"

echo.
echo LOADING... [----------]
echo         start-selection.ps1

set "FILES_DIR=%~dp0Files"
set "START=%FILES_DIR%\start-selection.ps1"
if not exist "%START%" (
    echo Config file not found: "%START%"
    echo The start-selection.ps1 file is required to in the same directory of Files.
    echo.
    echo Make sure that the start-selection.ps1 file is in the PATH of:
    echo "%START%"
    echo.
    echo Press any key to exit . . .
    pause >nul
    exit /b 1
)

echo LOADING... [==========]
echo         start-selection.ps1

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Files\start-selection.ps1"

if errorlevel 2 goto exit
if errorlevel 1 goto 1

:1

::                                                    ____ _____ 
::                                                   | __ )_   _|
::                                                   |  _ \ | |  
::                                                   | |_) || |  
::                                                   |____/ |_|  

title BT v0.0.4 alpha

:: There can be typos. My english isin't the best

::                                                 v0.0.4 alpha

::                    oo____oo_ooooooo_oo____oo___oooooooo_oo____oo_ooooooo_ooooooo___ooooooo_oo_
::                    oo____oo_oo______oo____oo______oo____oo____oo_oo______oo____oo__oo______oo_
::                    oo____oo_oooo_____oo__oo_______oo____oo____oo_oooo____oo____oo__oooo____oo_
::                    oooooooo_oo_________oo_________oo____oooooooo_oo______ooooooo___oo______oo_
::                    oo____oo_oo_________oo_________oo____oo____oo_oo______oo____oo__oo_________
::                    oo____oo_ooooooo____oo_________oo____oo____oo_ooooooo_oo_____oo_ooooooo_oo_
::                    ________________________________________________________________________oo_

::                                        Trust me there are no viruses

:: If you detect any bugs please report them to me :

:: GitHub project: https://github.com/TitasB2/Batch-Tools/issues/new (this takes to creating a new issue directly)
:: My Github account: https://github.com/TitasB2


:: These are just for copying I am lazy and random other stuff
:: And I don't really wanna waste time

REM if "%inp%"==""

REM Google (8.8.8.8) max can ping back 1472 bytes

REM %c%[33m   Yellow
REM %c%[32m   Green
REM %c%[31m   Red
REM %c%[34m   Dark blue
REM %c%[35m   Purple
REM %c%[36m   Light blue

echo.
echo LOADING... [----------]
echo       enabledelayedexpansion

setlocal enabledelayedexpansion

echo            [==========]
echo       enabledelayedexpansion
echo.

echo LOADING... [----------]
echo       Unicode symbol handling

:: Display symbols correctly
chcp 65001 >nul

echo            [==========]
echo       Unicode symbol handling
echo.

echo LOADING... [----------]
echo         variuble for colors

:: Make a variuble for colors
for /f %%a in ('echo prompt $E^| cmd') do set "c=%%a"

echo            [==========]
echo         variuble for colors
echo.

echo LOADING... [----------]
echo               bt.cfg

powershell -NoProfile -Command ^
  "$end = [Diagnostics.Stopwatch]::GetTimestamp() + [Diagnostics.Stopwatch]::Frequency / 2000; while ([Diagnostics.Stopwatch]::GetTimestamp() -lt $end) {}"

:: ====================================================================

set "CONFIG=%~dp0bt.cfg"
set "COOKIE_SCRIPT=%FILES_DIR%\cookies-agreement.vbs"
set "COOKIE_AGREE_TXT=%FILES_DIR%\DO_NOT_DELETE.txt"

if not exist "%CONFIG%" (
    echo %c%[31mConfig file not found%c%[0m: "%CONFIG%"
    echo %c%[31mThe bt.cfg file is required to in the same directory as bt.bat is in%c%[0m
    echo.
    echo %c%[31mMake sure that the bt.cfg file is in the PATH of%c%[0m:
    echo ...\BT\bt.cfg
    echo.
    echo Press any key to exit . . .
    pause >nul
    exit /b 1
)

for /f "usebackq eol=# tokens=1,* delims==" %%A in ("%CONFIG%") do (
    set "%%A=%%B"
)

if not exist "%FILES_DIR%\*" (
    mkdir "%FILES_DIR%"
)

:: ========================================================================

if "!BT_VERSION!"=="%VERSION%" (
    goto pass
) else (
    echo.
    echo %c%[31mThe versions don't match from bt.cfg%c%[0m
    echo %c%[31mPlease change it in bt.cfg to the current one. Or reinstall BT
    echo.
    echo Version writen in CFG: !BT_VERSION!
    echo Current version: %VERSION%
    echo.
    echo %c%[31mSolution: change the version in bt.cfg to the current%c%[0m
    echo.
    echo Press any key to exit . . .
    pause >nul
    goto :exit
)
:pass

echo            [==--------]
echo               bt.cfg

:: Defaults
:: if not defined BT_USE_COLORS set "BT_USE_COLORS=1"
if not defined BT_PROMPT_SEP set "BT_PROMPT_SEP=>"
:: if not defined BT_PROMPT_PREFIX set "BT_PROMPT_PREFIX="
if not defined BT_START_DIR set "BT_START_DIR="
echo            [====------]
echo               bt.cfg

:: Startup directory
if defined BT_START_DIR cd /d "%BT_START_DIR%"

echo            [======----]
echo               bt.cfg
powershell "Start-Sleep -Milliseconds 1"

:: Colors & skin
:: if "!BT_USE_COLORS!"=="1" (
::    for /f %%a in ('echo prompt $E^| cmd') do set "c=%%a"

::     if /i "!BT_SKIN!"=="default" (
::         set "color1=33"
::         set "color2=31"
::     ) else if /i "!BT_SKIN!"=="cyan" (
::         set "color1=36"
::         set "color2=37"
::     ) else if /i "!BT_SKIN!"=="green" (
::         set "color1=32"
::         set "color2=37"
::     ) else if /i "!BT_SKIN!"=="purple" (
::         set "color1=35"
::         set "color2=37"
::     ) else if /i "!BT_SKIN!"=="red" (
::         set "color1=31"
::         set "color2=33"
::     ) else if /i "!BT_SKIN!"=="blue" (
::         set "color1=34"
::         set "color2=36"
::     ) else (
::         set "color1=33"
::         set "color2=31"
::     )
:: ) else (
::     set "c="
::     set "color1="
::     set "color2="
:: )
echo            [==========]
echo               bt.cfg
echo.

powershell "Start-Sleep -Milliseconds 500"

echo LOADING... [----------]
echo        cookies-agreement.vbs

powershell "Start-Sleep -Milliseconds 15"

if not exist "%COOKIE_SCRIPT%" (
    echo %c%[31mCookie agreement script not found%c%[0m:
    echo "%COOKIE_SCRIPT%"
    echo.
    echo Press any key to continue . . .
    pause >nul
    goto skiploadcookie
)

echo            [==========]
echo        cookies-agreement.vbs
echo.

wscript.exe "%~dp0Files\cookies-agreement.vbs"

if errorlevel 1 (
    echo %c%[31mAgreement declined. Agreement is required.%c%[0m
    echo.
    echo Press any key to exit . . .
    pause >nul
    exit /b 1
)

:: powershell "Start-Sleep -Milliseconds 1"

:skiploadcookie

if not exist "%COOKIE_AGREE_TXT%" goto passNoCookie

echo LOADING... [----------]
echo          DO_NOT_DELETE.txt

powershell "Start-Sleep -Milliseconds 1"

echo            [==========]
echo          DO_NOT_DELETE.txt

:passNoCookie
:: powershell "Start-Sleep -Milliseconds 1"

goto finishloading

echo Agreement accepted or already confirmed.

:main

set "inp="
set "cmd="
set "arg="

cls

:finishloading

echo.
echo Batch Tools Version %VERSION% alpha
echo (c) All rights reserved.
echo.
echo ===============================================
echo.
echo                      %c%[33mB%c%[31mT%c%[0m
echo                  %c%[33mBatch %c%[31mTools%c%[0m
echo. 
echo ===============================================
echo.
if "!BT_PROMPT_PREFIX!"=="" (
    set "baseText=%cd%\BT"55u
) else (
    set "baseText=!BT_PROMPT_PREFIX!"
)
set "promptText=!baseText!!BT_PROMPT_SEP! "
set /p inp=!promptText!

if /i "%inp%"=="help" goto help
if /i "%inp%"=="BT" goto help
if /i "%inp%"=="bt" goto help 
if /i "%inp%"=="h" goto help
if /i "%inp%"=="?" goto help
if /i "%inp%"=="cls" cls & goto main
if /i "%inp%"=="clear" cls & goto main
:: Got lazy here 
REM if "%inp%"=="flushdns" ipconfig /flushdns || ( echo Something went wrong && pause ) & goto main
if /i "%inp%"=="flushdns" ipconfig /flushdns & pause & goto main
if /i "%inp%"=="ipconfig" goto ipconfig 
if /i "%inp%"=="ipcnfg" goto ipconfig
if /i "%inp%"=="exit" goto :exit
if /i "%inp%"=="switchusers" tsdiscon
if /i "%inp%"=="lock" rundll32.exe user32.dll,LockWorkStation & pause & goto main
if /i "%inp%"=="lockpc" rundll32.exe user32.dll,LockWorkStation & pause & goto main
if /i "%inp%"=="lkpc" rundll32.exe user32.dll,LockWorkStation & pause & goto main
if /i "%inp%"=="lk" rundll32.exe user32.dll,LockWorkStation & pause & goto main
if /i "%inp%"=="turnoff" (
    echo Are you sure? This will shutdown your PC ^(Y/N^)
    set /p dwn=
    if "%dwn%"=="Y" shutdown /t 0
    if "%dwn%"=="y" shutdown /t 0
    if "%dwn%"=="N" goto main
    if "%dwn%"=="n" goto main
)  
if /i "%inp%"=="trnoff" (
    echo Are you sure? This will shutdown your PC ^(Y/N^)
    set /p dwn1=
    if "%dwn1%"=="Y" shutdown /t 0
    if "%dwn1%"=="y" shutdown /t 0
    if "%dwn1%"=="N" goto main
    if "%dwn1%"=="n" goto main
)  
if /i "%inp%"=="shutdown" (
    echo Are you sure? This will shutdown your PC ^(Y/N^)
    set /p dwn2=
    if "%dwn2%"=="Y" shutdown /t 0
    if "%dwn2%"=="y" shutdown /t 0
    if "%dwn2%"=="N" goto main
    if "%dwn2%"=="n" goto main
)  
if /i "%inp%"=="shtdwn" (
    echo Are you sure? This will shutdown your PC ^(Y/N^)
    set /p dwn3=
    if "%dwn3%"=="Y" shutdown /t 0
    if "%dwn3%"=="y" shutdown /t 0
    if "%dwn3%"=="N" goto main
    if "%dwn3%"=="n" goto main
)  
if /i "%inp%"=="signout" shutdown /l
if /i "%inp%"=="sgnout" shutdown /l
if /i "%inp%"=="logout" shutdown /l
if /i "%inp%"=="lgout" shutdown /l
if /i "%inp%"=="restart" (
    echo Are you sure? This will restart your PC ^(Y/N^)
    set /p rtr=
    if "%rtr%"=="Y" shutdown /r /t 0
    if "%rtr%"=="y" shutdown /r /t 0
    if "%rtr%"=="N" goto main
    if "%rtr%"=="n" goto main
)  
if /i "%inp%"=="rstr" (
    echo Are you sure? This will restart your PC ^(Y/N^)
    set /p rtr1=
    if "%rtr1%"=="Y" shutdown /r /t 0
    if "%rtr1%"=="y" shutdown /r /t 0
    if "%rtr1%"=="N" goto main
    if "%rtr1%"=="n" goto main
)  
if /i "%inp%"=="rst" (
echo Are you sure? This will restart your PC ^(Y/N^)
set /p rtr2=
    if "%rtr2%"=="Y" shutdown /r /t 0
    if "%rtr2%"=="y" shutdown /r /t 0
    if "%rtr2%"=="N" goto main
    if "%rtr2%"=="n" goto main
)  
if /i "%inp%"=="hibernate" shutdown /h
if /i "%inp%"=="hibrnte" shutdown /h
if /i "%inp%"=="hbrnte" shutdown /h
if /i "%inp%"=="bt --version" goto version
if /i "%inp%"=="BT --version" goto version
if /i "%inp%"=="bt --v" goto version
if /i "%inp%"=="BT --v" goto version
if /i "%inp%"=="cleanup" goto cleanup
if /i "%inp%"=="clnup" goto cleanup
if /i "%inp%"=="clnp" goto cleanup
if /i "%inp%"=="clean" goto cleanup
if /i "%inp%"=="cln" goto cleanup
if /i "%inp%"=="myip" goto myip
if /i "%inp%"=="mip" goto myip
if /i "%inp%"=="ip" goto myip
if /i "%inp%"=="sleep" rundll32.exe powrprof.dll,SetSuspendState 0,1,0 & pause & goto main
if /i "%inp%"=="slp" rundll32.exe powrprof.dll,SetSuspendState 0,1,0 & pause & goto main
if /i "%inp%"=="uptime" net stats workstation | find "since" & pause & goto main
if /i "%inp%"=="uptme" net stats workstation | find "since" & pause & goto main
if /i "%inp%"=="ptime" net stats workstation | find "since" & pause & goto main
if /i "%inp%"=="ptme" net stats workstation | find "since" & pause & goto main
if /i "%inp%"=="whoami" whoami /all & pause & goto main
if /i "%inp%"=="whomi" whoami /all & pause & goto main
if /i "%inp%"=="whmi" whoami /all & pause & goto main
if /i "%inp%"=="wmi" whoami /all & pause & goto main
if /i "%inp%"=="dir" dir & pause & goto main
if /i "%inp%"=="dir /d" dir /d & pause & goto main
if /i "%inp%"=="dir /w" dir /w & pause & goto main
if /i "%inp%"=="dir /?" goto dir?
if /i "%inp%"=="systeminfo" systeminfo & pause & goto main
if /i "%inp%"=="sysinf" systeminfo & pause & goto main
if /i "%inp%"=="sinf" systeminfo & pause & goto main
if /i "%inp%"=="ping" goto :ping
if /i "%inp%"=="ping -f" goto :ping
if /i "%inp%"=="ping -n" goto ping-n
if /i "%inp%"=="ping -6" goto ping6
if /i "%inp%"=="ping -4" goto ping4
if /i "%inp%"=="ping /?" goto ping?
if /i "%inp%"=="info" goto info
if /i "%inp%"=="diskspace" goto diskspace
if /i "%inp%"=="findfile" goto findfile
if /i "%inp%"=="netcheck" goto netcheck
if /i "%inp%"=="timer" goto timer
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
        powershell -Command "& { Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Error; $notify.Visible = $true; $notify.ShowBalloonTip(5000, 'Batch Tools', 'File or folder not found in current directory.', [System.Windows.Forms.ToolTipIcon]::Error); Start-Sleep -Seconds 1; $notify.Dispose() }"
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
echo ================================================== BT Commands ==================================================
echo.

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
echo logout/lgout, signout/sgnout: sign out of current account

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
echo v!BT_VERSION! alpha

echo Press any key to go back...
pause >nul
goto main

:info
cls

echo.
echo There can be typos. My english isin't the best
echo.
echo                         v!BT_VERSION! alpha
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
echo Please star my project if you like it. I put hard work into it
echo https://github.com/TitasB2/Batch-Tools/
echo.
echo Made with %c%[31m^<3%c%[0m by Titas
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

if not "%TEMP%"=="" (
    del /q /f /s "%TEMP%\*"
) else (
    echo %c%[33mB%c%[31mT%c%[0m: %c%[31mTEMP is not defined or empty%c%[0m >&2
    powershell -Command "& { Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(5000, 'Batch Tools', 'TEMP is not defined or empty.', [System.Windows.Forms.ToolTipIcon]::Info); Start-Sleep -Seconds 1; $notify.Dispose() }"
    echo Press any key to go back . . . 
    pause
    goto main
)

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

echo Local IPv4:
ipconfig | findstr /i "IPv4"

echo.
echo Local IPv6:
ipconfig | findstr /i "IPv6"

echo.
echo Public IP:
curl.exe -s https://api.ipify.org

echo.
echo.
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

:diskspace
powershell.exe -NoProfile -Command "Get-CimInstance Win32_LogicalDisk -Filter 'DriveType=3' | ForEach-Object { '{0}: {1:N1} GB free of {2:N1} GB' -f $_.DeviceID, ($_.FreeSpace / 1GB), ($_.Size / 1GB) }"
echo.

echo Press any key to go back . . .
pause >nul
goto main

:findfile
set "searchName="
set /p "searchName=File name or part of name: "
if not defined searchName (
    echo Please enter a name.
    goto main
)

set "searchPath="
set /p "searchPath=Folder to search (Enter for current folder): "
if not defined searchPath set "searchPath=%CD%"

if not exist "%searchPath%" (
    echo Folder not found.
    pause
    goto main
)

where /r "%searchPath%" "*%searchName%*" 2>nul
if errorlevel 1 echo No matching files found.
echo.

echo Press any key to go back . . .
pause >nul
goto main

:netcheck
echo DNS lookup test:
nslookup example.com

echo.
echo Internet ping test:
ping -n 1 -w 2000 1.1.1.1
echo.

echo Press any key to go back . . .
pause >nul
goto main

:timer
set "seconds="
set /p "seconds=How many seconds? (1-99999): "

if not defined seconds goto main

set "invalid="
for /f "delims=0123456789" %%A in ("%seconds%") do set "invalid=1"
if defined invalid (
    echo Please enter digits only.
    pause
    goto main
)

timeout /t %seconds% /nobreak
if errorlevel 1 (
    echo Timer failed. Use a number from 1 to 99999.
    pause
    goto main
)

echo Time's up!
echo.

echo Press any key to go back . . .
pause >nul
goto main

:exit
exit

pause