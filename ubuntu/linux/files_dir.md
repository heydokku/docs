#### create a directory structure
```
tree -a test

├── kotlin
│   ├── ktApp1
│   │   └── .git
│   │       └── whatever.txt
│   └── ktApp2
│       └── .git
│           └── whatever.txt
└── python
    ├── pyApp1
    │   └── .git
    │       └── whatever.txt
    └── pyApp2
        └── .git
            └── whatever.txt
```

* File deletion: Remove all whatever.txt files under the current dir. The -delete action can only delete files and empty directories
```sh
find . -name 'whatever.txt' -delete # right
find . -type d -name '.git' -delete

find . -delete -type d -name '.git' # wrong
```
- never put the -delete action at the first position. If we do, it can delete files unexpectedly.

* use the find command with the -exec action
```
find . -name 'whatever.txt' -exec rm {} \;
find . -depth -type d -name '.git' -exec rm -rf '{}' \;
```

* we can also pipe the result of the find command to xargs and let xargs call the rm command to delete those files
```
find test -name 'whatever.txt' | xargs rm
find test -type d -name '.git' | xargs rm -r
```

Conclusion: - Our find command returns a large number of files or directories, find | xargs COMMAND will be much faster than the find -exec COMMAND approach.

* delete multiples dir at onece, manually

```rm -r ~/Documents/htg/{done,ideas,notes}```
