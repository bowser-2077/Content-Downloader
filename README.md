# Youtube Downloader Script

A simple batch script that allows you to download videos from various websites using `yt-dlp`.

## Features

- Download videos from YouTube, Twitch, SoundCloud, Instagram, and more.
- Automatically downloads and installs `yt-dlp` if it's not already present on your system.
- Easy-to-use interface with step-by-step instructions for users.
- Works on Windows with administrative privileges.

## Supported Websites

The script supports downloading from the following websites:

1. **YouTube** (Videos, Shorts, Streams)
2. **Twitch** (Clips, Streams)
3. **SoundCloud** (All tracks)
4. **9gag** (All videos)
5. **Spotify** (Warning: This feature may be broken)
6. **Apple Podcasts**
7. **Instagram**
8. **Kick** (Streams)
9. **Reddit** (All supported videos)

For a complete list of supported websites, check [yt-dlp Supported Sites](https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md).

## Requirements

- **Windows OS**
- **Administrator privileges** for script execution
- **Internet connection** for downloading `yt-dlp` and videos

## Installation

1. **Download the Script:**
   - Download the batch script file (`download_yt_video.bat`) from the repository.
   
2. **Run the Script as Administrator:**
   - Right-click on the script and select *Run as Administrator*. This ensures that the script has the necessary permissions to download and install `yt-dlp`.

3. **Follow the On-Screen Instructions:**
   - The script will ask for the URL of the video you want to download.
   - If `yt-dlp` is not already installed, it will be downloaded automatically.

## Usage

1. After launching the script, you will be asked to paste the link to the video you want to download.
2. The script will check if `yt-dlp` is installed, and if not, it will automatically download it to `C:\YoutubeDownloads`.
3. The script will then use `yt-dlp` to download the video from the provided URL.
4. The downloaded video will be saved in the `C:\YoutubeDownloads` directory.

## Troubleshooting
- Permission issues: Make sure you're running the script as an Administrator.
- Failed to download yt-dlp: If the download fails, check your internet connection and try again.
- Invalid URL: If the URL is invalid or unsupported, the download will fail. Ensure the URL is from a supported site.
