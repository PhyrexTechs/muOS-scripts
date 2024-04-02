@echo off
echo ----------------------------------
echo cue_bin_iso_gdi to CHD.bat
echo Created by: PhyrexTechs          
echo ----------------------------------


REM convert cue/iso/bin/gdi files in current folder and all subfolders using chdman with cdzl cdfl. 
for /R %%i in (*.cue, *.iso, *.gdi) do chdman createcd -c cdzl,cdfl -i "%%i" -o "%%~dpi/%%~ni.chd"

REM if .chd are present delete cue/iso/bin/gdi files in in current folder and all subfolders
for /R %%i in (*.cue, *.iso, *.bin, *.gdi) do for %%j in ("%%~dpi.") do if exist "%%~dpi*.chd" DEL /F "%%~dpi%%~nxi"
