# youtube-rsd

The script fetches new content from a list of Youtube channels without downloading previously downloaded content. Run it as often as you want or set it up as a cron job to fetch updated content.

Execute the script by running the dl.sh executable in the terminal.

Customize config/urls.txt to use other playlist URLs.

All files are downloaded as audio only and converted to AAC 32kb bitrate, 1.5x playback speed, +5dB volume gain. Adjust the ffmpeg parameters in config/process.sh to change this.

The script relies on youtube-dl for downloading, ffmpeg for conversion and id3v2 for tagging the audio files. These tools can be installed on OSX with brew.

The script does the following:
* Checks Youtube playlists specified in config/urls.txt
* Checks for already downloaded content. Video IDs are saved in config/history.txt
* Downloads only audio from each new video, saving files into directories named with uploader name
* Converts audio to AAC with playback speed increase and volume gain
* Removes the original Youtube files
* Tags the resulting audio files with file name as Title, directory name (uploader name) as Artist, and sets "Youtube" as Album.

After the script finishes, you can move/delete the downloaded files. All downloaded Youtube IDs are saved in config/history.txt so make sure to keep the config folder.
