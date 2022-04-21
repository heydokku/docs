npm is a separate project from Node.js. It tends to be updated more frequently
check the latest available npm version on this [page](https://github.com/npm/cli/releases/tag/v8.6.0)

```
# for linux and mac
# --global is a flag. -g is viet tat, abbreviated
npm install -g npm@latest
npm list --global --depth=0

# Any packages installed globally will become available from the command line
# example
uglifyjs example.js -o example.min.js

```

npm can install packages in *local or global mode*. In local mode, it installs the package in a *node_modules* folder in your parent working directory

- When you install packages locally, you normally do so using a package.json file

```
mkdir project && cd project
npm init
npm init -y # quickly create package.json file

# Install a Specific Version of an npm Package
npm install underscore@1.9.1

# latest version
npm install underscore@latest
npm uninstall underscore@latest

# remove node_modules folder
rm -R node_modules

# Manage npm’s Cache
ls ~/.npm
npm cache clean --force
# purge all node_module folders from your workspace
find . -name "node_modules" -type d -exec rm -rf '{}' +

# securites
npm audit
npm audit fix
npm audit fix --force

```

### npm Aliases

```
npm i <package>: install local package
npm i -g <package>: install global package
npm un <package>: uninstall local package
npm up: npm update packages
npm t: run tests
npm ls: list installed modules
npm ll or npm la: print additional package information while listing modules

```
### Manage npm Dependencies with package.json

[docs](https://docs.npmjs.com/cli/v8/configuring-npm/package-json#scripts)
```js
{
  "name": "project",
  "version": "1.0.0",
  "description": "",
  # primary entry point
  "main": "index.js",
  # scripts field lets you specify script commands that are run at various times in the life cycle of your package
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "author": "",
  "license": "ISC"
}
```
