```shell
# run “karma” no matter your current location, and the local version will run
npm install -g karma-cli

# must install karma as dependency
npm install karma --save-dev

# jasmine
npm install jasmine --save-dev
npm install karma-jasmine karma-firefox-launcher --save-dev

# mocha
npm install karma-mocha karma-chrome-launcher karma-firefox-launcher --save-dev
```
### Configuring can using JavaScript, CoffeeScript, or TypeScript

```
./karma.conf.js
./karma.conf.coffee
./karma.conf.ts
./.config/karma.conf.js
./.config/karma.conf.coffee
./.config/karma.conf.ts

```

### Config examples

Configuring Karma to run your tests in Headless Chrome is the hard part

[Example 1: Config with ChromeHeadless](Karma_Example 1)
[Example 2: Creating your own Headless Chrome launcher](Custom_Chrome_launcher)
[Config travis CI](travis_karma)
