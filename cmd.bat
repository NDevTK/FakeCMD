@echo off
set av="AVG Antivirus"

title Command Prompt
echo Microsoft Windows [Version 10.0.15063]
echo (c) 2017 Microsoft Corporation. All rights reserved.
echo.

:UserInput
set /p c="%cd%>"
if %c%==dir goto :c1
if %c%==tree goto :c2
if %c%==netstat goto :c3
if %c%==syskey goto :c4
if %c%==eventvwr goto :c3
%c%
goto :UserInput

:c1
dir
goto :fine

:c2
tree
goto :fine

:c3
netstat
color 4
cls
echo Be careful an scammers ip address was seen contected to this machine - %av%
goto :UserInput

:c4
echo Syskey has been disable by using system administrator
goto :UserInput

:fine
color a
echo Your pc is fine all files are clean - %av%
goto :UserInput

