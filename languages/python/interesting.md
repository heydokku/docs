
### Open a file with a program

```
import subprocess, sys

opener = "open" if sys.platform == "darwin" else "xdg-open"
subprocess.call([opener, filename])
```

### Poppen() in Subprocess

has communicate() method, use to create and *handle* processes

read stdout, handle strdrr
