Find process to kill: `kill` + tab

Find directories only: At the shell prompt, press Alt+C to autocomplete and find only directories. The rest of the interaction is same as that for Ctrl+T shown above.

UI decorations: A border can be added to the results list using the option --border. The search term can be inline in the results list using the option --info=inline. These and other commandline options to fzf can be set to the FZF_CTRL_T_OPTS shell variable. For the Fish shell for example, I set this in ~/.config/fish/config.fish.

Find files and directories: At the shell prompt, press Ctrl+T and FZF scans the files and directories inside your current directory and starts filling up its list.

Find from history: Ctrl+R does the fuzzy finding for commands from your shell history. This works in Bash, but seems to be disabled in Fish. No worries cause Fish already has powerful history search.

