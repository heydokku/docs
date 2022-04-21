The ChromeHeadless launcher is great because it works out of the box for testing on Headless Chrome. It includes the appropriate Chrome flags for you and launches a remote debugging version of Chrome on port 9222.

karma.conf.js
```
module.exports = function(config) {
  ...

  config.set({
    browsers: ['Chrome', 'ChromeHeadless', 'MyHeadlessChrome'],

    customLaunchers: {
      MyHeadlessChrome: {
        base: 'ChromeHeadless',
        flags: ['--disable-translate', '--disable-extensions', '--remote-debugging-port=9223']
      }
    },
  }
};

```
