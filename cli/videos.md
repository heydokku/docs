youtube-dl
ytfzf
newsboat


# Youtube Download

- installation
```shell
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
# update
youtube-dl -U
```
- download only audio from YouTube videos

If you just want to download the audio from a YouTube video, you can use the -x option to simply extract the audio file from the video.
```
# need to install ffmpeg
sudo apt install ffmpeg
```

```
youtube-dl -x --audio-format mp3 <video_url>
```

- download with options
```
# show list of available format
youtube-dl -F <video_url>
# mp4 with 1080 resolution
youtube-dl -f 37<video_url>
```
- download entire playlist

  ```
youtube-dl -cit <playlist_url>
  ```

#### ytfzf

* requirements
```
sudo apt install jq mpv ffmpeg -y
```
- Play audio only
```
ytfzf -m
```
- Download only, instead of playing it
```
ytfzf -d
```
- History
```
# Show history
ytfzf -H
# Clear history
ytfzf -x
```
- Other options

`-l`: loop
`-s`: search again
[fzf-shortcuts](https://github.com/pystardust/ytfzf/blob/master/docs/USAGE.md/#fzf-shortcuts)
[mpv shortcuts](https://github.com/pystardust/ytfzf/blob/master/docs/USAGE.md/#useful-mpv-key-bindings)
#### Stream Links
```
brew install streamlink
sudo apt install streamlink

streamlink STREAMURL best
```
