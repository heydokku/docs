# Awesome Shell [![Awesome][awesome-badge]][awesome-link]

A curated list of awesome command-line frameworks, toolkits, guides and gizmos. Inspired by awesome-php. This awesome collection is also available on [Unix-Shell.ZEEF.com](https://unix-shell.zeef.com/caleb.xu).
- [Shells](#shells)
- [Command-Line Productivity](#command-line-productivity)
  [Directory Navigation](#directory-navigation)
- [Customization](#customization)
- [For Developers](#for-developers)
- [System Utilities](#system-utilities)
- [Downloading and Serving](#downloading-and-serving)
- [Multimedia and File Formats](#multimedia-and-file-formats)
- [Applications](#applications)
- [Games](#games)
- [Shell Package Management](#shell-package-management)
- [Shell Script Development](#shell-script-development)
- [Guides](#guides)
- [**Awesome Zsh**][awesome-zsh]&nbsp; [![Awesome][awesome-badge]][awesome-zsh]
- [**Awesome Fish**][awesome-fish] [![Awesome][awesome-badge]][awesome-fish]
- [Other Awesome Lists](#other-awesome-lists)

## Shells

bash is the best shell yet

`bash-it` framework: alias, plugins, completion

[ ] [zx](zx): 30k Writing bash script with JavaScript

zsh cons:
- Not the default shell on the server side ( the biggest point)
- Not have vim mode
- Not good for automation

* - [X] [zsh](zsh) - Powerful shell with scripting language

[ ] Try nutshell, written in Rust

## For Developers

*Command-line development, version control, and deployment.*

* 0 [hub](https://github.com/github/hub) 22k - hub helps you win at git.
* 0 [gh]() 20k - hub helps you win at git.
What does gh provide that hub doesn't, and why would the experience not be focused on continuing to work on hub? Now there's 2 tools, clear confusion as to support, but both are being actively developed. I don't see the benefit of gh, to be honest.
[0] lazygit: 23k manage git repos in command line

[0] [ctop](ctop): 12.3k display CPU, memory usage for each container
[0] [lazydocker](lazydocker): 22k manage Docker containers, images in command line

## Benchmarking

- 0 [hyperfine](https://github.com/sharkdp/hyperfine) 10.8k - Benchmark commands through the command line.
- 0 [siege](https://github.com/JoeDog/siege) 5k- HTTP load testing and benchmarking utility.
- [loadtest](https://github.com/alexfernandez/loadtest) - Runs a load test on the selected HTTP URL.
- [pv](http://www.ivarch.com/programs/pv.shtml) - Monitor the progress of data through a pipeline.

## Backup, Clean
* o [mackup](https://github.com/lra/mackup/) 12k - Backup applications's settings to the cloud (ex Dropbox, google drive)
- 0 [Restic](https://restic.net) 16.4k - Fast, secure, efficient backup program.
- 0 [BorgBackup](https://github.com/borgbackup/borg) 8.2k- Significantly improved fork of Attic.
- 0 [Amanda](http://www.amanda.org) - Open Source Network Backup for Linux, Windows, UNIX and OS X.
- 
## Command-Line Productivity

*Search, bookmarks, multiplexing, and other tools that make your terminal experience more productive.*

* 0 navi - 10k An interactive cheatsheet tool for the command-line
* 0 tldr - 30k A fully-functional bash client for tldr, simplified and community-driven man pages
* 0 [cheat.sh](cheat) 28k fetch data from web
[ ] [awesome-cheatsheet](https://github.com/LeCoupa/awesome-cheatsheets#frameworks) 28k cheatsheet For frontend framework

SEARCH

* o [rg](https://github.com/BurntSushi/ripgrep) - ripgrep is a line oriented search tool that combines the usability of The Silver Searcher with the raw speed of GNU grep
* [aliases](https://github.com/sebglazebrook/aliases) - Contextual, dynamic, organized aliases for bash
* o [fzf](https://github.com/junegunn/fzf) - A command-line fuzzy finder
* o [ddgr](https://github.com/jarun/ddgr) - DuckDuckGo from the terminal
* ? [Buku](https://github.com/jarun/Buku) 5k- Powerful command-line bookmark manager. Difficult to install

ENVIRONMENT

* O [direnv](https://github.com/direnv/direnv) - 9k An environment switcher for the shell, compare with autoenv
* o [how2](https://github.com/santinic/how2) - 5.5k `how2` finds the simplest way to do something in a unix shell. It's like `man`, but you can query it in natural language.
* o [hr](https://github.com/LuRsT/hr) - `<hr />` for your terminal. Tired of not finding things in your terminal because there's a lot of logs and garbage
* o [k](https://github.com/supercrabtree/k) 1.5k - k is a Zsh script to make directory listings more readable, adding Git status, fileweight colors and rotting dates
* o [xxh](https://github.com/xxh/xxh) - Bring your favorite shell wherever you go through the SSH.
* o [xsv](https://github.com/BurntSushi/xsv)  8k- a fast CSV command line toolkit written in Rust
* o [tmux](https://tmux.github.io/) - Amazing terminal multiplexer

DATABASE

* o [usql](https://github.com/xo/usql) 8k - Universal command-line interface for SQL databases.
* o [fselect](https://github.com/jhspetersson/fselect) 3.5k- Find files with SQL-like queries.
* o [sqlline](https://github.com/julianhyde/sqlline) - Shell for issuing SQL to relational databases via JDBC (multiline, completion, highlighting, dialect support)

json 

* 0 [yq](https://github.com/mikefarah/yq) 5k- yq is a portable command-line YAML processor
* 0 [jq](https://github.com/stedolan/jq) 22k- Sed for json data. You can use it to slice and filter and map and transform structured data
* 0 [visidata](https://github.com/saulpw/visidata) 5k - A terminal spreadsheet multitool for exploring and arranging data (csv/json/xml/xls/yaml/etc)
* 0 [jo](https://github.com/jpmens/jo) 4k- A small utility to create JSON objects from command-line arguments.
* 
- [http-prompt](https://github.com/eliangcs/http-prompt) - Interactive HTTP client featuring autocomplete and syntax highlighting, built on HTTPie and prompt_toolkit.
- [Cookiecutter](https://github.com/audreyr/cookiecutter) - Creates projects from cookiecutters (project templates).
- [Critical](https://github.com/addyosmani/critical) 9.4k - Extract & inline critical-path CSS in HTML pages.
- [tokei](https://github.com/XAMPPRocky/tokei) 6.4k- Quickly display statistics about your code like number of files, total lines, comments and blanks, grouped by language.
- 

## Mac OS X

- [Homebrew](http://brew.sh) - The missing package manager for OS X.
- [mas](https://github.com/mas-cli/mas) 9k- Mac App Store command line interface.
- [itunes-remote](https://github.com/mischah/itunes-remote) - Control iTunes via CLI.
- [MacPorts](https://github.com/macports/macports-ports) - Compile, install and upgrade either command-line, X11 or Aqua based open-source software.
- [reminders-cli](https://github.com/keith/reminders-cli) 438 - Simple interface for interacting with Reminders.
- [tag](https://github.com/jdberry/tag) - Manipulate tags on files and query for files with those tags.

## Linux
- [deborphan](http://freecode.com/projects/deborphan) - Finds packages installed on your Debian system that have no other packages depending on them.
- 
### World Wide Web

- [pageres](https://github.com/sindresorhus/pageres) 10k - Capture screenshots of websites in various resolutions.

### Version Control

- [Git](https://www.git-scm.com) - Git is a free and open source distributed version control system.
- [tig](https://github.com/jonas/tig) 11k - ncurses based text-mode interface for Git.
- 
### VPN
- [OpenVPN](https://github.com/OpenVPN/openvpn) 7k- Full-featured open source SSL VPN solution.
- 
### SSH
- [sshfs](https://github.com/libfuse/sshfs) 4.5k- Locally mount a remote folder via SSH.
- [storm](http://stormssh.readthedocs.io/en/master/) 3.9k- Manage your SSH connections.

### System

- [ApacheTop](http://freecode.com/projects/apachetop) - Curses-based top-like display for Apache information, including requests per second, bytes per second, most popular URLs, etc.
- [bottom](https://github.com/ClementTsang/bottom) - Graphical process/system monitor with a customizable interface and multitude of features.
- [maybe](https://github.com/p-e-w/maybe) - See what a program does before deciding whether you really want it to happen.
- [netboot.xyz](https://netboot.xyz) - Boot multiple Operating System installers or utilities over the network from a single menu.
- [procs](https://github.com/dalance/procs) - Modern replacement for 'ps'.
- [screenFetch](https://github.com/KittyKatt/screenFetch) - Fetches system/theme information in terminal for desktop screenshots.

### Terminal

- [asciinema](https://asciinema.org) - Record terminal sessions and share them on the web.
- [dit](https://github.com/vulpino/dit) - Dotfile manager that hooks into Git.

### Security

- [Aircrack-ng](http://aircrack-ng.org) - 802.11 WEP and WPA-PSK keys cracking program that can recover keys once enough data packets have been captured.
- [Let's Encrypt](https://letsencrypt.org) - Free, automated and open Certificate Authority.
- [pass](https://www.passwordstore.org) - The standard Unix password manager.
[gopass](gopass) 4.5k Password manager

### Directory Navigation

* 0 [zoxide](https://github.com/ajeetdsouza/zoxide) 5.8k- A faster way to navigate your filesystem, written in Rust

## Customization

*Custom prompts, color themes, etc.*
 0 [emojify](https://github.com/mrowa44/emojify) Emoji on the command line :scream:
 0 [mysql-colorize](https://github.com/zpm-zsh/mysql-colorize) -  Colorization for mysql comand-line client

### Email

- [imapsync](https://github.com/imapsync/imapsync) - IMAP synchronisation, sync, copy or migration tool.
- [OfflineIMAP](https://github.com/OfflineIMAP/offlineimap) - Two-way sync your e-mail mailboxes as a local Maildir.
- 

[ ] [piku](piku): 1.5k The tiniest PaaS you've ever seen. Piku allows you to do git push deployments to your own servers

* 
* 0 [cloc](https://github.com/AlDanial/cloc) 14k - Count Lines of Code
* 0 [git-extra-commands](https://github.com/unixorn/git-extra-commands) 800 - Many Git extra utilities. Churn, cut-branch, improved-merge and many more.
* 0 [git-extras](https://github.com/tj/git-extras) - Git utilities -- repo summary, repl, changelog population, author commit percentages and more
* 1 [dokku](https://github.com/dokku/dokku) 23k - Docker powered mini-Heroku. The smallest PaaS implementation you've ever seen.
Can not install with my HP laptop, because it's too old.
[Install guide](https://computingforgeeks.com/how-to-deploy-dokku-paas-on-ubuntu/)

Hooks  management

* 0 [forgit](https://github.com/wfxr/forgit)  4k- Utility tool for `git` taking advantage of fuzzy finder fzf. No for oh-my-zsh
* 0 [git-open](https://github.com/paulirish/git-open) - Type `git open` to open the GitHub page or website for a repository in your browser
* 0 [overcommit](https://github.com/sds/overcommit) 4k - A fully configurable and extendable Git hook manager
* 0 [pre-commit](https://pre-commit.com) 8k - A framework for managing and maintaining multi-language pre-commit hooks

### Automation

- 0 [Ansible](https://www.ansible.com) - Automate deployment, configuration, and upgrading.
- 
## System Utilities

*OS-related tools, including system administration, system debugging, and file and process management.*

### Monitoring

* 0 [glances](monitoring/glances) 21k - Glances an Eye on your system
Glances is written in Python and uses the psutil library to get information from your system.

supervisor: 7.9k control processes related to a project or a customer, 
and is meant to start like any other service at boot time such as mongodb, redis ..
[example](https://www.youtube.com/watch?v=eX7D40y9qv8)

Logging
* 
* 0 [bat](https://github.com/sharkdp/bat) - A `cat` clone with wings

Web Logging

* 0 [goaccess](https://github.com/allinurl/goaccess#what-is-it) 14.7k - GoAccess is a real-time *web log analyzer* and interactive viewer that runs in a terminal in \*nix systems.
screenshots

Security
* 0 [stronghold](https://github.com/alichtman/stronghold) 1k - Easily configure MacOS security settings from the terminal.

## Networking

- [bandwhich](https://github.com/imsnif/bandwhich) - Displays current network utilization by process, connection and remote IP or hostname.
- [localtunnel](https://github.com/localtunnel/localtunnel) 13.8k - Exposes your localhost to the world for easy testing and sharing.
Great for working with browser testing tools like browserling or external api callback services like twilio which require a
public url for callbacks.

- [Nethogs](https://github.com/raboof/nethogs) - Linux 'net top' tool.
- 0 [peerflix](https://github.com/mafintosh/peerflix) - Streaming torrent client for node.js.
*Self-hosted, lightweight servers and networking tools written in shell scripts.*
- [license](https://nishanths.github.io/license/) - Create LICENSEs from the command-line.
- [pockyt](https://github.com/arvindch/pockyt) - Composable Pocket client for the terminal.

Download Ultility

0 [aria2](https://github.com/aria2/aria2) 27k - aria2 is a lightweight *multi-protoco* & multi-source, cross platform download utility operated in command-line. It supports HTTP/HTTPS, FTP, BitTorrent and Metalink
Download files through HTTP(S)/FTP/SFTP/BitTorrent with command line interface
curl/wget alternaitves

0 [webui-aria2](webui-aria2): 8.7k interface to interact with aria2 

* 0 [youtube-dl](https://yt-dl.org/) - Small command-line program to download videos from YouTube.com and other video sites
* o [transfer.sh](https://transfer.sh/) 12k —  Easy and fast file sharing from the command-line.
Communicate with API
0 [httpie](https://github.com/httpie/httpie) - HTTPie is a command line HTTP client, a user-friendly cURL replacement
 
## Multimedia and File Formats

*Tools for handling video and audio files.*

* 0 [Beets](https://github.com/beetbox/beets) 10k - Music library manager and MusicBrainz tagger
Browse your music library graphically through a Web browser and play it in any browser that supports HTML5 Audio.

* 0 [editly](https://github.com/mifi/editly) 3.3k - Command line video editor
* 0 [cmus](https://github.com/cmus/cmus) 5k - Cross-platform cli audio player.
* 0 [dasel](https://github.com/tomwright/dasel) 2.8k - Query and update data structures using selectors from the command line. Comparable to [jq](https://github.com/stedolan/jq) 21.7k / [yq](https://github.com/kislyuk/yq) - 1.8k but supports JSON, YAML, TOML and XML with zero runtime dependencies.
* 0 [fx](https://github.com/antonmedv/fx) 13.3- Command-line JSON processing tool by anononymus JavaScript functions
* [gifgen](https://github.com/lukechilds/gifgen) - Simple high quality GIF encoding
* [korkut](https://github.com/oguzhaninan/korkut) - Quick and simple image processing at the command line.
* 0 [mpv](https://mpv.io/) - Lets you play most audio and video formats (using ASCII characters) in the shell as well as in a GUI.
* 0 [sejda](https://github.com/torakiki/sejda/) - Command line manipulation of PDF documents (split, merge, rotate, convert to jpg, extract text, etc)

## Applications

Browse

[0] w3m [key Mapping ](key Mapping )is the best. 


For creating task
- [Timetrap](Timetrap) - 1.2k Simple timetracker.
* 'ONE THING AT A TIME' philosophy, analyze everything
* 
Writing notes
taskbook 
0 [dnote](https://github.com/dnote/dnote) 2.2k- Note managements in CLI. A simple command line notebook with multi-device sync and web interface. Write note in a file.

- [MapSCII](https://github.com/rastapasta/mapscii) - OpenStreetMap client, renders an explorable Braille & ASCII world map.
- [SC-IM](https://github.com/andmarti1424/sc-im) - ncurses-based spreadsheet application.

Finance
* o [ticker](https://github.com/achannarasappa/ticker#quick-start) — 5k Terminal stock ticker with live updates and position tracking `ticker -w NET,AAPL,TSLA`
* 0 [ledger](https://github.com/ledger/ledger) 4.2k- Command line accounting
* o [cointop](https://github.com/miguelmota/cointop)  4k - The fastest and most interactive terminal based UI application for tracking cryptocurrencies

Weather 
* o [wego](https://github.com/schachmat/wego) 7k - Weather app for the terminal
* o [wttr.in](https://github.com/chubin/wttr.in) 18k - :partly_sunny: The right way to check the weather (curl wttr.in)

Geo
* o [whereami](https://github.com/rafaelrinaldi/whereami) - Get your geolocation information from the CLI

Calendar
* x [gcalcli](https://github.com/insanum/gcalcli) - Google Calendar command line interface

News, Social
* 0 [haxor-news](https://github.com/donnemartin/haxor-news) - Browse Hacker News like a haxor
* 0 [Reddit Terminal Viewer](https://github.com/michael-lazar/rtv) - Browse Reddit from your terminal

File Transer, Download

Translation
* 0 [fanyi](https://github.com/afc163/fanyi) - Translate English to Chinese in terminal

Calculator
* 0 [pcalc](https://github.com/alt-romes/programmer-calculator) 170- Calculator made for programmers working with multiple number representations, sizes, and overall close to the bits.
* 0 [bitwise](https://github.com/mellowcandle/bitwise) - Terminal based interactive bit manipulator in curses.
* 0 [bcal](https://github.com/jarun/bcal) - Byte CALculator for storage conversions and calculations

Navigation

- nnn: 14k UI is simple
* X [ranger](https://github.com/ranger/ranger) 12k- 
Cons:  Delete a file/dir through many steps, has too may config files


Devops
* o [SAWS](https://github.com/donnemartin/saws) 5k - A Supercharged AWS CLI
- 0 [awless](https://github.com/wallix/awless) - Mighty command-line interface for Amazon Web Services.
- 0 [awscli](https://aws.amazon.com/cli/) - Official Amazon AWS command-line interface.
- [cadaver](http://www.webdav.org/cadaver/) - WebDAV client for Unix.
- [google-drive-upload](https://github.com/labbots/google-drive-upload) - Upload and sync files to Google Drive.

## Games

*All work and no play is a cruddy way to spend your day.*

* [bash2048](https://github.com/mydzor/bash2048) - Bash implementation of 2048 game
* [minesweeper](https://github.com/feherke/Bash-script/tree/master/minesweeper) - Bash implementation of minesweeper
* 0 [nudoku](https://github.com/jubalh/nudoku) - ncurses based sudoku game written in C
* 0 [piu-piu](https://github.com/vaniacer/piu-piu-SH) - Horizontal scroller game in bash with multiplayer mode!
* 0 [sedtris](https://github.com/uuner/sedtris) - Tetris in sed
* [sed-scripts](https://github.com/aureliojargas/sed-scripts) - Arkanoid and Sokoban written using sed
* [SHTAP](https://notimetoplay.org/engines/shtap/) - Reusable text adventure engine for Bash 4
* [tty-solitaire](https://github.com/mpereira/tty-solitaire) - Play solitaire in your terminal!

## Formatting - Linting - Static Analysis

* 0 [shellcheck](https://github.com/koalaman/shellcheck) 29k- Static analysis tool for shell scripts
* 

### Conversion

- 0 [Pandoc](http://pandoc.org/) - Universal document converter.

### Content Creation

- [GitBook](https://github.com/GitbookIO/gitbook) 24.6k - Library and cmd utility to generate GitBooks.
- 
### Databases

- 0 [mycli](http://mycli.net) - Command-line interface for MySQL, MariaDB, and Percona with auto-completion and syntax highlighting.
- 0 [pgcli](http://pgcli.com) - Command-line interface for Postgres with auto-completion and syntax highlighting.
- 0 [usql](https://github.com/xo/usql) - Universal command-line interface for SQL databases.

### FTP

- [CurlFtpFS](http://curlftpfs.sourceforge.net/) - Filesystem for accessing FTP hosts based on FUSE and libcurl.
- [LFTP](http://lftp.tech/) - Sophisticated ftp/http client, and a file transfer program supporting a number of network protocols.
- [NcFTP](http://www.ncftp.com/ncftp/) - Set of free application programs implementing the File Transfer Protocol (FTP).

### Productivity

- [Timetrap](https://github.com/samg/timetrap) - Simple timetracker.

### Presentation

- [termui](https://github.com/gizak/termui) - Cross-platform, easy-to-compile, and fully-customizable terminal dashboard.
- [WOPR](https://github.com/yaronn/wopr) - Simple markup language for creating rich terminal reports, presentations and infographics.
### Media

- [FFmpeg](http://ffmpeg.org) - Records, converts and streams audio and video.
- [Gifsicle](http://www.lcdf.org/gifsicle/) - Creates, edits, and gets information about GIF images and animations.
- [HandBrakeCLI](https://handbrake.fr) - Converts video from nearly any format to a selection of modern, widely supported codecs.
### IRC

- [Irssi](https://github.com/irssi/irssi) - The client of the future.
- [WeeChat](https://weechat.org/) - Fast, light and extensible chat client.

# Guides

* [Bash Official Reference Manual](https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html)
* [Bash Hackers Wiki](https://wiki.bash-hackers.org/)
* [Greg Wooledge's (aka "greycat") wiki](https://mywiki.wooledge.org).
  Specifically [Bash Guide](https://mywiki.wooledge.org/BashGuide), [Bash FAQ](https://mywiki.wooledge.org/BashFAQ) and [Bash Pitfalls](https://mywiki.wooledge.org/BashPitfalls)
* [Google's Shell Style Guide](https://google.github.io/styleguide/shell.xml)
* [The Linux Documentation Project: Bash Programming - Intro/How-to](https://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO.html)
* [The Linux Documentation Project: Advanced Bash Scripting Guide](https://tldp.org/LDP/abs/html/)
* [WikiBooks: Bash Shell Scripting](https://en.wikibooks.org/wiki/Bash_Shell_Scripting)
* [Use the Unofficial Bash Strict Mode (Unless You Looove Debugging)](http://redsymbol.net/articles/unofficial-bash-strict-mode/)
* [The Art of Command Line](https://github.com/jlevy/the-art-of-command-line)
* [Learn Enough Command Line to Be Dangerous](https://www.learnenough.com/command-line-tutorial/basics)
* [A guide to learn bash](https://github.com/Idnan/bash-guide)
* [Shell Field Guide](https://raimonster.com/scripting-field-guide/)

### See also

* [awesome-zsh][awesome-zsh]
* [terminals-are-sexy](https://github.com/k4m4/terminals-are-sexy)

