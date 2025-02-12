@echo off
mode con: cols=120 lines=40
cls
timeout 1 >nul

:main
cls
SETLOCAL DisableDelayedExpansion
title -- Content Downloader v2 [Uncompiled!] --
color 4
echo =========== Please Read With Attention! =========
echo ==          YT-DLP Download Script             ==
echo ==      Press any key to download yt-dlp.      ==
echo == MAKE SURE THIS YOU RUN THIS FILE AS ADMIN ! ==
echo ==       If you are sure, press enter!         ==
echo =================================================
echo ============= Credits and License ===============
echo ==                                             ==
echo ==             UNDER MIT LICENSE               ==
echo ==       Copyright 2025 LERLEY Gaetan          ==
echo ==  THE SOFTWARE IS PROVIDED AS IS, WITHOUT    ==
echo ==   WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, ==
echo == INCLUDING BUT NOT LIMITED TO THE WARRANTIES ==
echo == OF MERCHANTABILITY,FITNESS FOR A PARTICULAR == 
echo ==   PURPOSE AND NONINFRINGEMENT. IN NO EVENT  ==
echo ==  SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE  == 
echo ==   LIABLE FOR ANY CLAIM, DAMAGES OR OTHER    ==
echo == LIABILITY, WHETHER IN AN ACTION OF CONTRACT == 
echo == ,TORT OR OTHERWISE, ARISING FROM, OUT OF OR ==
echo ==  IN CONNECTION WITH THE SOFTWARE OR THE USE ==
echo ==      OR OTHER DEALINGS IN THE SOFTWARE.     ==
echo ==                                             ==
echo =================================================
echo =================================================
echo ==      Scroll Up To See All Of The Text       ==
echo =================================================
timeout -1 >nul
cls
color 3
goto download
 
:exe
title -- Files Config.... --
echo ==================
echo == Please Wait ===
echo ==================
echo.
echo ===================
echo == Loading Files ==
echo ===================
timeout 1 >nul
cls
echo ======================
echo == Building Files / ==
echo ======================
echo.
echo ===========================
echo == This can take a while ==
echo ===========================
timeout 1 >nul
cls
echo ======================
echo == Building Files - ==
echo ======================
echo.
echo ===========================
echo == This can take a while ==
echo ===========================
timeout 1 >nul
cls
echo ======================
echo == Building Files \ ==
echo ======================
echo.
echo ===========================
echo == This can take a while ==
echo ===========================
timeout 1 >nul
cls
echo ======================
echo == Building Files - ==
echo ======================
echo.
echo ===========================
echo == This can take a while ==
echo ===========================
timeout 1 >nul
cls
echo ======================
echo == Building Files I ==
echo ======================
echo.
echo ===========================
echo == This can take a while ==
echo ===========================
timeout 1 >nul 
cls
echo ======================
echo == Building Files / ==
echo ======================
echo.
echo ===========================
echo == This can take a while ==
echo ===========================
timeout 1 >nul
cls
echo ======================
echo == Building Files - ==
echo ======================
echo.
echo ===========================
echo == This can take a while ==
echo ===========================
timeout 1 >nul
cls
echo ======================
echo == Building Files \ ==
echo ======================
echo.
echo ===========================
echo == This can take a while ==
echo ===========================
timeout 1 >nul
cls
echo ======================
echo == Building Files - ==
echo ======================
echo.
echo ===========================
echo == This can take a while ==
echo ===========================
cls
echo ======================
echo == Building Files I ==
echo ======================
echo.
echo ===========================
echo == This can take a while ==
echo ===========================
timeout 1 >nul 
cls
echo ===================================
echo ==== Waiting for powershell... ====
echo ===================================
timeout 1 >nul
cd C:\
mkdir YoutubeDownloads
mkdir YoutubeDownloads\AppCache
move %SystemRoot%\system32\WindowsPowerShell\v1.0\yt-dlp.exe C:\YoutubeDownloads
echo "appurl=https://github.com/yt-dlp/yt-dlp | configfile=current | setcmd=SETLOCAL DisableDelayedExpansion">C:\YoutubeDownloads\config.conf
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
yt-dlp.exe "%url%" >nul
echo ===============================================
echo == Check logs for any error, and press enter ==
echo ===============================================
pause
color 2
echo ====================
echo == Downloading... ==
echo ====================
timeout 1 >nul 
cls
echo ===================================================
echo == ^^^^ Moving files out of cache folder... ^^^^ ==
echo ===================================================
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



