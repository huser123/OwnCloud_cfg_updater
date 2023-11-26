@echo off

rem A felhasználó neve
rem set USERNAME=%USERNAME%

rem A mappák nevei
set FOLDER1="LEADAS_a_tanarnak"
set FOLDER2="FELADAT_a_tanartol"

rem A mappák létrehozása
mkdir "%USERPROFILE%\Desktop\%FOLDER1%"
mkdir "%USERPROFILE%\Desktop\%FOLDER2%"

rem Belép a könyvtárba és létrehozza a fájlt (ha létezik, üres sort írva bele, törli annak tartalmát)
cd C:\Users\%USERNAME%\AppData\Roaming\ownCloud
echo. > owncloud.cfg

rem A fájl neve és helye
set FILE=C:\Users\%USERNAME%\AppData\Roaming\ownCloud\owncloud.cfg

rem A fájl megnyitása
rem R/O módban, hogy a végére tudjuk írni
rem A fájl végére ugrunk
rem A beszúrandó sorokat hozzáadjuk
rem A fájlt bezárjuk
echo [General] > %FILE%
echo clientVersion=5.1.2.12600 >> %FILE%
echo issuesWidgetFilter=FatalError, NormalError, SoftError, Conflict, FileIgnored, Restoration, DetailError, BlacklistedError, Excluded, Message, FilenameReserved >> %FILE%
echo logHttp=false >> %FILE%
echo optionalDesktopNotifications=true >> %FILE%
echo promptDeleteAllFiles=false >> %FILE%
echo skipUpdateCheck=true >> %FILE%

rem A sikeres végrehajtás jelzése
echo A script sikeresen végrehajtódott.
