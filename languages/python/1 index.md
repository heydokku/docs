- Features of the language
- Usages
- What
- How to
- Why
- Differences
- (Web, mobile) application frameworks
- Environment or Package manager
- Formatting - Linting
- Static type checker, Static Code Analysis
- Container-related (With docker)
- Template (engine)
- Date time
- Logging
- Testing
- Database
- Worker - Thread - Scheduling
- Network
- Coding Tips
- Jupyter Notebook
- References ( at least has official docs link )


### Differences

[python vs ipython](python vs ipython)

# use setuptool with click

With 3 easy steps, you can make your CLI tool clean and professional.

* The Problem

`$ python mysupercoolscript.py useful_command`

I really wanted it to look like:

`$ mysupercoolscript useful_command`

* Step #1: Create setup.py

```python
#setup.py
from setuptools import setup
setup(
    name='mysupercoolscript',
    version='0.0.1',
    entry_points={
        'console_scripts': [
            'mysupercoolscript=mysupercoolscript:mysupercoolscript'
        ]
    }
)
```

Easy enough. Just need to choose a name and replace mysupercoolscript with your own name..

* Step #2: Create your CLI script

Next up: Creating the actual mysupercoolscript.py script to run my commands, options and other awesome click things. I created a group (that is used as my CLI tool name) that has one command: ‘useful_command’. This will go in the same directory as my setup.py script.

 ```python
#mysupercoolscript.py
import os
import click
import sys

@click.group()
@click.pass_context
def mysupercoolscript(self):
    pass

@mysupercoolscript.command()
def useful_command():
    """Does something useful"""
    print("Looks like you got it working, finally.")

cli = click.CommandCollection(sources=[mysupercoolscript])

if __name__ == '__main__':
    mysupercoolscript()
```

* Step #3: Run pip install -e

Now that we have everything setup, we need to do the important part. This is where I ran the instruction:

pip install -e ~/folder/

* Test it any where
$ mysupercoolscript useful_command

# While True:

Since True always evaluates to True, *the loop will run indefinitely, until something within the loop returns or breaks.*

# convert string to float
https://favtutor.com/blogs/string-to-float-python

# DO NOT name the file that has the same name with the name the module

# Tools
Coding
- Use Jupyter lab to code python.
- Never use vim to code python again

Environment
    Conda

# [python logging](https://www.geeksforgeeks.org/E python-add-logging-to-a-python-script/?ref=rp)
# import module in python
https://pythonin1minute.com/how-to-import-from-another-folder-in-python/

### Outlines

- WHAT
- WHY
- Libraries

### WHAT

[what is _ underscore meanings in Python?](underscore.md)
[what is requirements.in?](requirements_in.md)
[what is **kwargs?](kwargs.md)
[What is  setup.py file?](setuptools.md)
[Pyproject.toml [link](pyproject.md)What is  pyproject.toml file?](pyproject.md)
[What is  __init__.py file?](init.md)
What is  _main__.py file? [link](main.md)
What is  _name__? is [Special Variables](https://www.tutorialspoint.com/name-a-special-variable-in-python): when you run a function from the imported script, the __name__ variable will evaluate to the actual name of the script and not equal to __main__.

What is Python standalone file? [link](standalonefile.md):
What is middleware? [link](middleware.md):

### WHY

Why need to pin your package? [link](pinning.md)

### HOW

How to run a module in python [link](module)

### DIFFERENCES

Package(pkg) vs Module vs Script [link](package vs module.md)
[pip install vs python setup.py install](pip.md)
exception vs raise [link](exception.md)
venv vs virtualenv [link](env/virtualenv)

### Web application framework API 

FastAPI is the king

-[0] [FastAPI](FastAPI): 47k Writing API with little code. Best with python-based API


-[0] [Flask](Flask): 59k Tweak the Python, many code than FastAPI when create API
-[x] [Django](Django): 64k, not for API-only app
-[x] Pyramid: 4k
-[x] Express.js: NOT good. Pros: Only one, use frontend with backend in JS

Cookiecutter templates

- [ ] [cookiecutter-pypackage](cookiecutter-pypackage): 3.4k Cookiecutter template for a Python package.
- [ ] [cookiecutter-django](cookiecutter-django): 9.5k
- [ ] [cookiecutter-flask](cookiecutter-flask): 4.1k
- [ ] [cookiecutter-flask-restful](lask): 4.1k

Template engine

- [ ] [jinja](jinja)



### Libraries

- Environment, package managers

- [x] [python-dotenv]():  5k Get and set values in your .env file in local and production servers
- [x] [poetry](poetry.md): Cons: Can not install excutable file like setup.py
- [x] pipenv: 21k compete directly with poetry
- [x] pyenv: python version managers
- [x] [setuptools](setuptools.md): TOO complicated. Cons: So many conflicts between dev and production environment. Ac mong. Pros: Only used to create cli apps with setup.py
- [x] [pipdeptree](https://github.com/naiquevin/pipdeptree#visualizing-the-dependency-graph): command line utility for displaying the installed python packages in form of a dependency tree. easy to see conflicts between packages, easy to debug

```shell
pip freeze # show flat
pipdeptree --graph-output png > dependencies.png
```

- [x] [pip-tools link](pip-tools.md)
- [x] virtualenv:

- Containers

docker
pydocker: use docker in python script

- Version management

- [ ] [bump2version](https://github.com/c4urself/bump2version#configuration-file)

- Utils

Isort: sort imports ( before pre-commit)

- Testing

Pytest
Tox.ini

- Static type checker
Mypy
[jedi](jedi): 5.1k
[pyright](): 7.8k
[sourcery](sourcery): 1k  Refactor Python using AI

- Formating

Linting
[pydantic](pydantic): 10k Data parsing and validation using Python type hints. So GREAT

### Webserver

ASGI (Asynchronous Server Gateway Interface) is a spiritual successor to WSGI. 
Intended to provide a _standard interface_ between async-capable Python web servers, frameworks, and applications.

- [uvicorn](uvicorn): 5k An ASGI web server
- [starlette](): 5k lightweight ASGI framework/toolkit, which is ideal for building async web services in Python.
- [features](https://github.com/encode/starlette#starlette)


### Worker - Thread - Scheduling

- [ ] [schedule](Schedule):  10k Python job scheduling for humans.
- [ ] [RabbitMQ Server official docs](https://www.rabbitmq.com/#features): 10k open source message broker
- [ ] [Celery](celery1): 20k Distributed Task Queue [api reference](https://github.com/celery/celery/tree/master/docs/userguide)

### Processes

[  ] [supervisor](supervisor): 10k A Process Control System for a specified folder, app

[ ] psutils: 9k Cross-platform lib for process and system monitoring in Python. This library is used to create glances

### Date - time

Arrow

- Logging - Tracing

Loguru: very simple to use, totally can replace the standard logging library

Builtin Modules: logging, traceback, warnings

- Exception:

 better_exceptions

- System-related

Built-in modules:
os
sys
pathlib
subprocess: spawn a process
shlex
shutil: module offers a number of high-level operations on files and collections of files.


finance libraries  [link](finance_libs)

Pipx: install Python CLI applications globally while still isolating them in virtual environments. This allows for clean upgrades and uninstalls. GREAT
Pipx install poetry

Questions
"I installed a package, but I can't import it!?"
DO
Python3 -m pip install package  # install package that is suitable with your python
DO NOT
Pip install package


Python basic concepts

Setup tools:
Wheel:
Editable mode:


### Database-Backend

- [ ] [Flask-Migrate](https://github.com/miguelgrinberg/Flask-Migrate): SQLAlchemy database migrations for Flask applications using Alembic

[SqlAlchedemy](sqlalchemy.md) docs [link](https://docs.sqlalchemy.org/en/14/orm/session_basics.html)
 [GINO](https://github.com/python-gino/gino) Is Not ORM - a lightweight Python asyncio ORM on SQLAlchemy core. only support asyncpg
 [alembic](https://alembic.sqlalchemy.org/en/latest/) A database migrations tool for SQLAlchemy.

 [Geospatial](https://github.com/geoalchemy/geoalchemy2) extension to SQLAlchemy

 [marshallow](https://github.com/marshmallow-code/marshmallow): 6k A lightweight library for converting complex objects to and from simple Python datatypes.

- [x] Sqlite

- litecli: SQLite: manipulate file with autocompletion
- [sqlite-utils](https://github.com/simonw/sqlite-utils#using-as-a-cli-tool): SQLite CLI utility and library for manipulating databases. Can manipulate on the right CLI

- [ ] Posgresql
- [ ] [Redid](Redis): 50k

asyncpg: 5.4k  A fast PostgreSQL Database Client Library for Python/asyncio.
[psycopg2](https://www.psycopg.org/docs/): 2.6k database adapter for the Python programming language

- [ ] MySQL/Mariadb


[PyMysql](https://github.com/PyMySQL/PyMySQL#installation): 6.8k Manipulate Mysql data in python scripts

- Network

[Twisted](https://github.com/twisted/twisted) Event-driven networking engine written in Python.
Sqlite vs Postgres difference
Most different point
SQLite is an Embedded DBMS, serverless
PostgreSQL DBMS implements a Client-Server Model and requires a Database Server to set up and run over a network.
Template engine

Cookie-cutter pypackage

Logging
why use logging instead of print

logs are configurable. You can easily filter them, send them to files, format them, add timestamps, and any other things you might need on a global basis. Print statements are not easily managed.

BOUGHT, BUYING, SOLD, SELLING = range(4)

Why need __main.py__ files ? link to create executable package

The big difference is that without the -m switch, the "package" directory is first added to the path (i.e. sys.path), and then the files are run normally, without package semantics.

Whereas with the -m switch, package semantics (including relative imports) are honoured, and the package directory itself is never added to the system path.

there is a block at the end of the file which looks like this: if __name__ == '__main__':. This is traditionally how a standalone Python file looks like. With Click you can continue doing that, but there are better ways through setuptools.

Python setup.py install vs python setup.py develop

python setup.py develop

For your own stuff, you want to first install your package and then be able to frequently edit the code without having to re-install the package every time — and that is exactly what python setup.py develop does: it installs the package (typically just a source folder) in a way that allows you to conveniently edit your code after it’s installed to the (virtual) environment, and have the changes take effect immediately.

python setup.py install

is used to install (typically third party) packages that you're not going to develop/modify/debug yourself.

It is highly recommended to use pip install . (regular install) and pip install -e . (developer install)

The develop will not install the package but it will create a .egg-link in the deployment directory back to the project source code directory.

So it's like installing but instead of copying to the site-packages it adds a symbolic link (the .egg-link acts as a multiplatform symbolic link).

- Command Line Interfaces tips [link](cli_tips.md)

[Click](click.md): 13k stars
Argparse (built-in module)
Colorama: Styling the output


- Time series data [list of libraries](list of libraries)

### Coding tips

[Coding tips](code_tips.md)
Python interesting things [link](interesting)

### Jupyter Notebook

- [ ] [jupyter-notebook](notebook)

### References

1. [Python Books](https://python101.pythonlibrary.org/part_i.html)
2. [Type Checking](https://realpython.com/fastapi-python-web-apis/)
