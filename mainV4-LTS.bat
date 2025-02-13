@echo off
cd C:\
mkdir YoutubeDownloads
mkdir YoutubeDownloads\AppCache

    setlocal enableextensions enabledelayedexpansion

    Rem Get a carriage return character
    set "CR=" & for /f %%a in ('copy /Z "%~f0" nul') do if not defined CR set "CR=%%a"
    rem The progress bar
    set "fill=[##########]"

    cls
    echo(::: Please Wait, Downloading FFMPEG....

cd C:\Windows\System32\WindowsPowerShell\v1.0\
if not exist C:\YoutubeDownloads\ffmpeg.exe (
    powershell.exe -Command "Invoke-WebRequest 'https://download1503.mediafire.com/t14nc7b193ig_0VzawvjdPAEioWOJHpRef6uQlMhZiAeUaOn6rorYMUsxDbU6EmRmZ4sJ7dHNSfSultRSOdu1LpFGtPCluqfiDNGouvaiRlJv1k_NDw8rKIvi0JebwQ4Yk_23JA_JIEajFr9Cwj8fwWWIhWYI40__-WbGMhQyq93qg/zl5v685xee917cx/ffmpeg.exe' -OutFile c:\YoutubeDownloads\ffmpeg.exe"
    move %SystemRoot%\system32\WindowsPowerShell\v1.0\ffmpeg.exe C:\YoutubeDownloads 
)

if not exist C:\YoutubeDownloads\ffprobe.exe (
    powershell.exe -Command "Invoke-WebRequest 'https://download943.mediafire.com/09sng8zn5luguiDxD0r4kAyNqjaELLBM4fd0NaDZaPmdUdjnz4wTy1aj6KkhmTZVEzMqXuSKpCKEAuEbqcYVGyEBNmd9PE8nyEV4jDWLn8tUubfoQNCqqoi0diN-jeFwmTuEgw-5WTEF8U5JX-IJg-L8g9DUaMoN_pec5Hi4WnBRPA/6pgf4uk3uq6asqj/ffprobe.exe' -OutFile C:\YoutubeDownloads\ffprobe.exe"
    move %SystemRoot%\system32\WindowsPowerShell\v1.0\ffprobe.exe C:\YoutubeDownloads
)
    rem For each character in the fill
    for /l %%a in (2 1 11) do (
        rem Calculate the right part of the bar
        set "spaces=!fill:~%%a!"

        rem Output the left and right parts of the bar and carriage return
        <nul set/p ".=::: Loading FFMPEG !fill:~0,%%a!!spaces:#= !!CR!"

        rem Pause for a second
        ping -n 1,5 "" > nul
    )
    echo(
    echo(::: Done
echo =================================================
echo == FFMPEG was successfully loaded if installed ==
echo ==          Press any key to continue          ==
echo =================================================
timeout -1 >nul

cls
timeout 1 >nul
:credits
color A
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
echo ==           PRESS ENTER TO CONTINUE           ==
echo =================================================
timeout -1 >nul
goto main

:main
cls
SETLOCAL DisableDelayedExpansion
title -- Content Downloader v2 [Uncompiled!] --
color 4
echo =========== Please Read With Attention! =========
echo ==          YT-DLP Download warning            ==
echo ==                                             ==
echo == MAKE SURE THIS YOU RUN THIS FILE AS ADMIN ! ==
echo ==   DOWNLOAD MAY FAIL (powershell usage)      ==
echo ==       If you are sure, press enter!         ==
echo ==                                             ==
echo ==               Thanks for                    ==
echo ==        Using Content Downloader V4          ==
echo ==                                             ==
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
cls
echo ===================================
echo ==== Waiting for powershell... ====
echo ====   Next version will use   ====
echo ====   Non-Admin powershell    ====
echo ====        Commands           ====
echo ===   Press enter to continue   ===
echo ===================================

timeout -1 >nul
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
echo ====== Supported Websites =====================================================================
Echo ==                                                                                            =
echo == 1. Youtube (Videos, shorts, streams)                                                       =
echo == 2. Twitch (Clips, streams)                                                                 =
echo == 3. Soundcloud (All)                                                                        =
echo == 4. 9gag (All videos)                                                                       =
echo == 5. Spotify (Waring, its broken. I dont know if its working now.)                           = 
echo == 6. Apple Podcasts                                                                          =
echo == 7. Instagram                                                                               =
echo == 8. Kick (Stream)                                                                           =
echo == 9. Reddit                                                                                  =
echo == All other websites here : https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md   =
Echo ==                                                                                            =
echo ==                 DOWNLOADS MAY TAKE A LONG TIME (DUE TO FFMPEG INSTALL)                     =
echo ==                          But you have good quality videos :)                               =
echo ===============================================================================================
echo.
set /p url=Paste your  link here: 
cd C:\YoutubeDownloads
title -- Downloading files...  --
yt-dlp.exe "%url%" >nul
echo ===================================================================
echo == Download Complete! (You can ignore ffmpeg and ffprobe errors) == 
echo ==          Check logs for any error, and press enter            ==
echo ===================================================================
pause
color 2
cls
echo ===================================================
echo ==      Moving files out of cache folder...      ==
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



