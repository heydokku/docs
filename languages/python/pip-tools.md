### Problems that pip-tools solved

- *Must* install every time when create environment
```sh
python -m pip install pip-tools
```

we want to pin packages, but don’t want to let them become outdated

### Usages

Check for Updates Automatically

### Commands

- First, run pip-compile

```sh
pip-compile requirements.in # automatically generate requirements.txt file
pip-sync
```
- Then, pip-sync

### pip-compile

- produce (compile) a requirements.txt file from your dependencies, specified in either *setup.py* or *requirements.in.*

```sh
# 2 ways
$ pip-compile requirements.in # with requirements.in, preferred

$ pip-compile # with setup.py

```

Note: If pip-compile finds an existing requirements.txt file that fulfils the dependencies then no changes will be made, even if updates are available. To compile from scratch, *first delete* the existing requirements.txt file, or see Updating requirements for alternative approaches.

Example

requirements.in file:

Flask>=0.9
legit

Then we run pip-compile, and get:

async==0.6.1  # required by legit==0.1.1
clint==0.3.1  # required by legit==0.1.1
Flask==0.9
gitdb==0.5.4  # required by legit==0.1.1
GitPython==0.3.2.RC1  # required by legit==0.1.1
Jinja2==2.6  # required by Flask==0.9
legit==0.1.1
smmap==0.8.2  # required by legit==0.1.1
Werkzeug==0.8.3  # required by Flask==0.9


### pip-sync


The unused dependencies are removed automatically. Now we need to sync that back to our actual env:

adopt the use of pip-sync over pip install -r requirements.txt, as environments are automatically cleaned up that way.

It understands the convention of separating requirements into multiple files, following the naming convention:

- requirements.txt is the main (and default) requirements file;

- dev-requirements.txt, or test-requirements.txt

To install requirements in production stage use:
$ pip-sync

You can install requirements in development stage by:

$ pip-sync requirements.txt dev-requirements.txt

The above is equal to

```sh
python -m pip install -r requirements.txt
```

TODO: use pip-compile as a hook for the pre-commit
```sh
# requirements.txt
Flask==0.9 # not include the package used together with Flask

# dev-requirements.txt
ipython # no version

#----- Running pip-dump will result in the following output:

# requirements.txt
Flask==0.9
Jinja2==2.6
Werkzeug==0.8.3

# dev-requirements.txt
ipython==0.13

```

### pip-sync
