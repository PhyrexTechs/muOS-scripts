@echo off
echo ----------------------------------
echo Revert MuOS .m3u Creator / Unhind folders
echo Created by: PhyrexTechs          
echo ----------------------------------

timeout /t 2>nul

@echo.
@echo *** Unhide directories ***
REM Unhide all directories by removing the "." in front of them
setlocal disabledelayedexpansion
for /D %%I in (.*) do (set fname=%%I) & call :rename
goto :NEXT
:rename
REM Cuts off 1st character
ren "%fname%" "%fname:~1%"
goto :eof
@echo off

:NEXT
@echo *** Deleting all .m3u files in the current directory and subdirectories before running to avoid duplicates ***
@echo on  
for /R %%I in (*.m3u) do for %%J in ("%%~dpI.") do DEL /F "%%~dpI%%~nxI"
@echo off

@echo.
@echo *** Creating .m3u files ***
REM For each .chd file in a sub folder create a .m3u file (name based on the folder name) then add text to the .m3u that points to .chd files.
@echo on
for /R %%I in (*.chd) do for %%J in ("%%~dpI.") do echo %%~nxJ/%%~nxI>>"%%~dpJ%%~nxJ.m3u"
@echo off

echo.
echo *** Complete ***

REM Pause until a key is pressed.
timeout -1

exit