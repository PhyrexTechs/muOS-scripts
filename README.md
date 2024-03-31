# MuOS Scripts
These scripts are for batch processing the convertion of your CD-disc based games into CHD files and for createing M3U files to handle multi-disc games. 

This gives explinations to each of the files in this respoitory.

In no way do I claim to be a batch script wizard. A lot of this I had to fiddle around with to get to work. If you are more experienced with batch scripts please let me know if you see ways to improve these.  

## CHD converter


### Cue_bin_iso_gdi to CHD.bat

+ This will search for .cue/bin/iso/gdi files in subfolders and use chdman to convert them into CHD files. 
If conversion is successful it will delete all the old .cue/bin/iso/gdi files. If you do not want it to delete the files when done remove the bottem line of this script. 

+ This can be used for most CD-based games such as PS1, PS2, Dreamcast, Sega CD etc.

>[!IMPORTANT]
>**Requires chdman.exe to be in the same folder with it**<br />
>**Requires games to be in their own individual folders**<br />
>**If using for Dreamcast games only convert .gdi files and not .cue/bin as this can cause some emulators to not be able to read the files**<br />


### chdman.exe

+ This is used for the script below and does not need to be run by itself.

<br />
<br />

## m3u creator


### MuOS m3u creator.bat
>[!IMPORTANT]
>Requires games to be in their own individual folders
+ When you run this it will hide all folders in the current directory then recreate all the .m3u files pointing to the .chd files the new hidden folders.

<br />

### Revert MuOS m3u Creator.bat

+ This will revert all the changes made by "MuOS m3u creator.bat" by unhiding the folders and recreating the .m3u files.

