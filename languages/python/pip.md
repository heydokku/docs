```sh
$ pip install . # install package with setup.py or pyproject.toml
$ pip setup install . # same as above, preferred using pip
```


    pip will automatically download all dependencies for a package for you. In contrast, if you use setup.py, you often have to manually search out and download dependencies, which is tedious and can become frustrating.

    pip keeps track of various metadata that lets you easily uninstall and update packages with a single command: pip uninstall <PACKAGE-NAME> and pip install --upgrade <PACKAGE-NAME>. In contrast, if you install a package using setup.py, you have to manually delete and maintain a package by hand if you want to get rid of it, which could be potentially error-prone.
    You no longer have to manually download your files. If you use setup.py, you have to visit the library's website, figure out where to download it, extract the file, run setup.py... In contrast, pip will automatically search the Python Package Index (PyPi) to see if the package exists there, and will automatically download, extract, and install the package for you. With a few exceptions, almost every single genuinely useful Python library can be found on PyPi.
    pip will let you easily install wheels, which is the new standard of Python distribution. More info about wheels.
    pip offers additional benefits that integrate well with using virtualenv, which is a program that lets you run multiple projects that require conflicting libraries and Python versions on your computer. More info.
    pip is bundled by default with Python as of Python 2.7.9 on the Python 2.x series, and as of Python 3.4.0 on the Python 3.x series, making it even easier to use.
