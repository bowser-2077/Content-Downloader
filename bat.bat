@echo off
MODE 80, 40

:main
SETLOCAL DisableDelayedExpansion
title -- Content Downloader v2 [Uncompiled!] --
color 4
echo ===========Please Read With Attention!===========
echo ==          YT-DLP Download Script             ==
echo ==      Press any key to download yt-dlp.      ==
echo == MAKE SURE THIS YOU RUN THIS FILE AS ADMIN ! ==
echo ==       If you are sure, press enter!         ==
echo =================================================
timeout -1 >nul
cls
color 3
goto download
 


:exe
title -- Files Config.... --
echo == Please Wait ===
timeout 1 >nul
cls
echo == Building Files / ==
timeout 1 >nul
cls
echo == Building Files - ==
timeout 1 >nul
cls
echo == Building files \ ==
timeout 1 >nul
cls
echo == Building files - ==
cls
echo == Building files I ==
timeout 1 >nul 
cls
echo == Building Files / ==
timeout 1 >nul
cls
echo == Building Files - ==
timeout 1 >nul
cls
echo == Building files \ ==
timeout 1 >nul
cls
echo == Building files - ==
cls
echo == Building files I ==
timeout 1 >nul 
cls
echo ==== Waiting for powershell... ====
timeout 1 >nul
cd C:\
mkdir YoutubeDownloads
mkdir YoutubeDownloads\AppCache
move %SystemRoot%\system32\WindowsPowerShell\v1.0\yt-dlp.exe C:\YoutubeDownloads
cls
pause
goto app


:download
title -- Downloading YT-DLP! --
cd C:\Windows\System32\WindowsPowerShell\v1.0\
if not exist C:\YoutubeDownloads\yt-dlp.exe (
    powershell.exe -Command "Invoke-Webrequest https://github.com/yt-dlp/yt-dlp/releases/download/2025.01.26/yt-dlp.exe -Outfile C:\YoutubeDownloads\yt-dlp.exe"
)
cls
goto exe


:app
title -- Download Page --
echo ==== Supported Websites ====================================================================
Echo.                                                                                           =
echo 1. Youtube (Videos, shorts, streams)                                                       =
echo 2. Twitch (Clips, streams)                                                                 =
echo 3. Soundcloud (All)                                                                        =
echo 4. 9gag (All videos)                                                                       =
echo 5. Spotify (Waring, its broken. I dont know if its working now.)                           = 
echo 6. Apple Podcasts                                                                          =
echo 7. Instagram                                                                               =
echo 8. Kick (Stream)                                                                           =
echo 9. Reddit                                                                                  =
echo All other websites here : https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md   =
Echo.                                                                                           =
echo ============================================================================================
echo.
set /p url=Paste your  link here: 
cd C:\YoutubeDownloads
title -- Downloading files...  --
yt-dlp.exe "%url%" >nul 2>nul
color 2
echo ====================
echo == Downloading... ==
echo ====================
timeout 1 >nul 
cls
echo =========================================
echo == Moving files out of cache folder... ==
echo =========================================
timeout 1 >nul
cls
echo =============
echo == Success ==
echo =============
timeout 1 >nul
cls
echo ============================================================
echo == File Successfully downloaded at "C:\YoutubeDownloads"  ==
echo == Make sure the file is present in the location!         ==
echo == Press CTRL+C to exit                                   ==
echo ============================================================
timeout 1 >nul
echo =====================================
echo == yt-dlp is flushing the cache... ==
echo =====================================
timeout 1 >nul
echo ================================================================
echo == Successfully flushed the cache! Press any key to continue. ==
echo ================================================================
timeout -1 >Nul 
color 3
cls
goto app



