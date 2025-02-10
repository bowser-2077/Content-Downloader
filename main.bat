@echo off

:main
SETLOCAL DisableDelayedExpansion
title "== Youtube Downloader =="
color 3
echo == Downloading YT-DLP ==
echo == Press any key to download yt-dlp. ==
echo === MAKE SURE THIS YOU RUN THIS FILE AS ADMIN ! ===
echo == If you are sure, press enter! ==
timeout -1 >nul
goto download
cls 


:exe
echo == Please Wait ===
cd C:\
mkdir YoutubeDownloads
move %SystemRoot%\system32\WindowsPowerShell\v1.0\yt-dlp.exe C:\YoutubeDownloads
cls
goto app


:download
cd C:\Windows\System32\WindowsPowerShell\v1.0\
powershell.exe -Command "Invoke-Webrequest https://github.com/yt-dlp/yt-dlp/releases/download/2025.01.26/yt-dlp.exe -Outfile yt-dlp.exe"
cls
goto exe


:app
echo ==== Supported Websites ==================================================================
Echo.
echo 1. Youtube (Videos, shorts, streams)
echo 2. Twitch (Clips, streams)
echo 3. Soundcloud (All)
echo 4. 9gag (All videos)
echo 5. Spotify (Waring, its broken. I dont know if its working now.)
echo 6. Apple Podcasts
echo 7. Instagram
echo 8. Kick (Stream)
echo 9. Reddit
echo All other websites here : https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md
Echo.
echo ===========================================================================================
echo.
set /p url=Paste your  link here: 
cd C:\YoutubeDownloads
yt-dlp.exe "%url%" >nul 2>nul
color 2
echo == File Successfully downloaded at "C:\YoutubeDownloads" ==
echo == Make sure the file is present in the location! ==
echo == Press any key to continue or press CTRL+C to exit ==
timeout -1 >Nul 
cls
goto app



