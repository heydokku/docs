```.travis.yml

language: node_js
node_js:
  - "7"
dist: trusty # needs Ubuntu Trusty
# Note: if you switch to sudo: false, you'll need to launch Chrome with --no-sandbox.
# See https://github.com/travis-ci/travis-ci/issues/8836
sudo: required
addons:
  chrome: stable # have Travis install Chrome stable.
cache:
  yarn: true
  directories:
    - node_modules
install:
  - yarn
script:
  - yarn test

```
