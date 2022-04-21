https://mariusschulz.com/blog/fast-searching-with-ripgrep

#### Recursively search the current directory for a regular expression:
rg regular_expression

#### Search for regular expressions recursively in the current directory, including hidden files and files listed in .gitignore:
rg --no-ignore --hidden regular_expression

#### Search for a regular expression only in a certain filetype (e.g., html, css, etc.):
rg --type filetype regular_expression

#### Search for a regular expression only in a subset of directories:
rg regular_expression set_of_subdirs

#### Search for a regular expression in files matching a glob (e.g., README.*):
rg regular_expression --glob glob

#### Sometimes, you're not interested in seeing the matches themselves, but rather the paths of all files that contain at least one match. You can use the --files-with-matches option for that, or -l for short:

Only list matched files (useful when piping to other commands):
rg --files-with-matches or -l regular_expression


Show lines that do not match the given regular expression:
rg --invert-match regular_expression
Search a literal string pattern:
rg --fixed-strings -- string
tldr.sh
