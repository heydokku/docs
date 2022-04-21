### Definition

Only contain the *top level* packages

### Commands

```sh

pip freeze > requirements.txt

pip install -r requirements.txt

cat requirements.txt
```

### requirements.txt problems

The file will get more and more installed dependencies over time. Make it very difficult to manage dependencies


A typical example is that you’ll depend on Django or Flask. But just putting those names in an requirements.txt file is inherently dangerous and will bite you at some point. If you don’t see why, read this post first.
