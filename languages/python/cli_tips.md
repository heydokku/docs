### Create ClI for a module in python

Step 1. Create __main__.py and main.py in the same package

https://github.com/freqtrade/freqtrade/tree/develop/freqtrade

Step 2. Use Click or argparse(builtin module) to create

Step 3. Create setup.py

```py

from setuptools import setup, find_packages

setup(
    name='trading',
    version='0.1.0',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'Click',
    ],
    # Most important code here
    entry_points={
        'console_scripts': [
            'trading = trading.main:main',
        ],
    },
)
```
