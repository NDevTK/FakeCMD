@echo off
title Command Prompt
set av="AVG Antivirus"

echo Microsoft Windows [Version 10.0.15063]
echo (c) 2017 Microsoft Corporation. All rights reserved.
echo.

:UserInput
set /p c="%cd%>"
if %c%==dir goto :fine
if %c%==tree goto :fine
if %c%==netstat goto :warn
if %c%==syskey goto :c4
if %c%==eventvwr goto :c3
%c%
goto :UserInput
:warn
%c%
color 4
cls
echo Be careful an scammers ip address was seen contected to this machine - %av%
goto :UserInput
:c4
echo Syskey has been disabled by your system administrator
goto :UserInput
:fine
%c%
color a
echo Your pc is fine and all your files are clean - %av%
goto :UserInput
