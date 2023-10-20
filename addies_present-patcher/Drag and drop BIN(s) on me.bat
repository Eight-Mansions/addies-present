@echo off
set cuename_1=Addies_Present
set filename_1=Addies_Present_1
set filename_2=Addies_Present_2
set filename_3=Addies_Present_3
set filename_4=Addies_Present_4
set file_type=BIN
set patch_file_1=Addies_Present_1-patch.xdelta
set patch_file_2=Addies_Present_2-patch.xdelta
set patch_file_3=Addies_Present_3-patch.xdelta
set patch_file_4=Addies_Present_4-patch.xdelta

set found_disc=

pushd %~dp0
if "%~1"=="" goto :NOISO

:: Iterate over all files that get dragged onto here
for %%A in (%*) do (
    echo Patching %%A...
    echo:

    patch_data\xdelta.exe -d -f -s %%A patch_data\%patch_file_1% "%filename_1%.bin" 2>nul
    if not errorlevel 1 (
        set found_track_1=true

        echo Track 1 found!
    )

    patch_data\xdelta.exe -d -f -s %%A patch_data\%patch_file_2% "%filename_2%.bin" 2>nul
    if not errorlevel 1 (
        set found_track_2=true
        
        echo Track 2 found!
    )

    patch_data\xdelta.exe -d -f -s %%A patch_data\%patch_file_3% "%filename_3%.bin" 2>nul
    if not errorlevel 1 (
        set found_track_3=true
        
        echo Track 3 found!
    )

    patch_data\xdelta.exe -d -f -s %%A patch_data\%patch_file_4% "%filename_4%.bin" 2>nul
    if not errorlevel 1 (
        set found_track_4=true
        
        echo Track 4 found!
    )
)

if not defined found_track_1 goto :NOPATCHFOUND

echo FILE "%filename_1%.bin" BINARY>%cuename_1%.cue
echo   TRACK 01 MODE2/2352>>%cuename_1%.cue
echo     INDEX 01 00:00:00>>%cuename_1%.cue
echo FILE "%filename_2%.bin" BINARY>>%cuename_1%.cue
echo   TRACK 02 AUDIO>>%cuename_1%.cue
echo       INDEX 00 00:00:00>>%cuename_1%.cue
echo       INDEX 01 00:02:00>>%cuename_1%.cue
echo FILE "%filename_3%.bin" BINARY>>%cuename_1%.cue
echo     TRACK 03 AUDIO>>%cuename_1%.cue
echo       INDEX 00 00:00:00>>%cuename_1%.cue
echo       INDEX 01 00:02:00>>%cuename_1%.cue
echo FILE "%filename_4%.bin" BINARY>>%cuename_1%.cue
echo     TRACK 04 AUDIO>>%cuename_1%.cue
echo       INDEX 00 00:00:00>>%cuename_1%.cue
echo       INDEX 01 00:02:00>>%cuename_1%.cue
echo.

echo Success!
echo:
echo ---
echo One or more of the following %file_type% files should have been created next to the bat file:
echo * %filename_1%(.bin/.cue)
echo ---
echo:
echo Load up the .cue file for the disc you wish to play and enjoy!
echo If a disc image is missing, please verify you used the 1st BIN track of the original CD.
echo:
goto :EXIT

:NOISO
echo To patch %file_type% don't run this bat file.
echo Simply drag and drop %file_type% on it and the patch process will start.
goto :EXIT

:NOPATCHFOUND
echo No patch found suitable for those files.
echo Please make sure to drag in clean BIN files of disc 1, 2, 3, and/or 4.
echo:
echo If the problem persists, blame esperknight ; _;

:EXIT
popd
echo:
echo Press any key to close this window
pause >nul
exit
