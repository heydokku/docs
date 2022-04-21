# Outlines
- setup.py
- install_requires vs requirements.txt differences
- dev requirements vs production environment
- setup.config
- setup.py

SO complicated to manage dependencies.

NEVER USE setuptools AGAIN


## setup.py

*Note*: Must install setuptools before creating setup.py

- installing a package locally

```sh
$ python setup.py install
$ python setup.py --help
```
- can be utilized to install your newly created package to any device using Python with the help of the simple pip command

- creating a package

The setup.py command is a part of the setuptools library that needs to be installed in Python before using this command

```py
from setuptools import setup

setup(
   name='foo',
   version='2.0',
   description='Something different',
   author='Dokku',
   author_email='foomail@foo.com',
   packages=['foo'],  # would be the same as name
   install_requires=['wheel', 'bar', 'greek'], #external packages acting as dependencies
)
```

### install_requires vs requirements.txt differences

Requirements Files described most simply, are just a list of pip install
arguments placed into a file.

Whereas install_requires defines the dependencies for a single project,
Requirements Files are often used to define the requirements for a complete
Python environment.

Whereas install_requires requirements are minimal, requirements files often
contain an exhaustive listing of pinned versions for the purpose of achieving
repeatable installations of a complete environment.

Whereas install_requires requirements are “Abstract”, i.e. not associated with
any particular index, requirements files often contain pip options like
--index-url or --find-links to make requirements “Concrete”, i.e. associated with
a particular index or directory of packages. 1

Whereas install_requires metadata is automatically analyzed by pip during an
install, requirements files are not, and only are used when a user specifically
installs them using python -m pip install -r.
