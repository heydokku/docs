### Why Poetry

Packaging systems and dependency management in Python are rather convoluted and hard to understand for newcomers. Even for seasoned developers it might be cumbersome at times to create all files needed in a Python project:setup.py, requirements.txt, setup.cfg, MANIFEST.in and the newly added Pipfile.

What this means is that it will always work isolated from your global Python installation. To achieve this, it will first check if it’s currently running inside a virtual environment. If it is, it will use it directly without creating a new one. But if it’s not, it will use one that it has already created or create a brand new one for you.

The pyproject.toml file is what is the most important here. This will orchestrate your project and its dependencies
