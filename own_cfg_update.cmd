@echo off

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
