@ECHO OFF


::
:: Initial check.
:: Verify if the SDK is correctly configurated
::
IF "%OSDK%"=="" GOTO ErCfg


::
:: Set the build paremeters
::
CALL osdk_config.bat


::
:: Launch the compilation of files
::
CALL %OSDK%\bin\make.bat %OSDKFILE%

::
:: Assemble the music player
::
ECHO Assembling music player
%osdk%\bin\xa mymplayer.s -o build\mymplayer.o
%OSDK%\bin\header -h1 -a0 build\mymplayer.o build\mymplayer.tap $3500


echo %osdk%

SET YM2MYM=%osdk%\Bin\ym2mym.exe -h1 -m18872

%YM2MYM% "data\cool.ym" build\cool.tap                     $4600 "MusicB"

::
:: Rename files so they have friendly names on the disk
::
%OSDK%\bin\taptap ren build\%OSDKNAME%.tap "Test" 0
%OSDK%\bin\taptap ren build\mymplayer.tap "mymplayer" 0


pause

ECHO Building DSK file
%OSDK%\bin\tap2dsk -iCLS:TEST build\%OSDKNAME%.TAP build\mymplayer.tap build\cool.tap build\%OSDKNAME%.dsk

%OSDK%\bin\old2mfm build\%OSDKNAME%.dsk


GOTO End


::
:: Outputs an error message
::
:ErCfg
ECHO == ERROR ==
ECHO The Oric SDK was not configured properly
ECHO You should have a OSDK environment variable setted to the location of the SDK
IF "%OSDKBRIEF%"=="" PAUSE
GOTO End


:End
pause