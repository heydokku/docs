[ref](https://blog.logrocket.com/a-quick-and-complete-guide-to-mocha-testing-d0e0ea09f09d/#mochaclioptions)

- Manual Testing or Automation Testing
- Language
- Name of Testing FrameWork
- Type of testing: Unit or Integration or End to End ...
- Testing Interfaces: BDD or TDD
- How to config?
- CLI to run the test: 'npm test' or 'pytest'
- What is Test Cases, Test Suite ?

### How to write test suite, test case?

Example:

- Writing a test suite with Mocha.js

It’s time for you to write your first test suite and run the tests with Mocha. To start, you must implement a sum() function that:

    Can accept any number of arguments
    Requires all arguments to be numbers and throws an error if any is not a number
    Computes and returns the sum of its arguments provided all are numbers
    Returns 0 if no argument is passed

### What is Test Hook ?

Hooks are basically logic that have been configured to run before or after tests. They are useful for setting up preconditions for tests or cleaning up resources after tests.

    before()  runs once before the first test case in the block
    beforeEach()  runs before each test case
    afterEach()  runs after each test case
    after()  runs once after the last test case in the block

Depending on the hooks that apply to a given test suite, the hooks are run together with the tests in the suite in a definite sequence.

before() -> beforeEach() -> test() -> afterEach() -> after()


- How to create hooks?

Each hook basically takes a callback function as an argument. The callback function contains logic to be executed when the hook is triggered. The logic can be either synchronous or asynchronous just as it is with regular test cases.

```mocha
describe('some module', function() {

  beforeEach(function() {
    // some logic to run before each test
    // logic can be sync or async
  })

})
```
- Hooks can also take an optional description as the first argument, which makes it easier to track errors

```
describe('some module', function() {

  // HOOK WITH NAMED FUNCTION
  beforeEach(function createSession() {
    // beforeEach:createSession
  })

  // HOOK WITH DESCRIPTION
  beforeEach('create a user session', function() {
    // beforeEach:create a user session
  })
```
-
- The `describe()` function is a way to group tests

You can nest your tests in groups as deep as you deem necessary.

describe() takes two arguments:

    The name of the test group
    A callback function

```
describe('some module', function() {

  beforeEach(function function() {
    // beforeEach:function
  })

```
- The root-level hook

```mocha
// hook is defined outside a definite describe() block, the hook becomes a root-level hook
var tests = 1;

// Will run after every test in every file
afterEach(function() {
  console.log('Test #' + (tests++));
})

```
- Delay the test

Sometimes, you may want to perform an asynchronous operation before running any of your test suites. Mocha.js allows you to delay the root suite by running the mocha binary with the --delay option
```mochajs
// if run() method is never called, the tests will never run
// add the following code snippet to any of the test files
// Delay running the tests until after 5s
setTimeout(function() {
  run()
}, 5000);

```
```
npm test -- --delay
```

- Controlling tests

Pending test

```
describe('#flattenArray()', function() {
  // a pending test
  // Whenever a callback function is not passed as second argument to it(),
  it('should flatten array');
})
```

- Including and excluding tests

You can also specify test suites and test cases that should or should not be run

You can use .only() and .skip() multiple times to select a set of suites and tests to run. However, you must note the following:

    Nested suites will still be executed
    Hooks will still be executed if present
    Tests will have precedence

-   Retrying Mocha.js tests
```
describe('test medium site', function() {

  // all failed tests in this suite will only be retried 2 times
  this.retries(2);

  it('should load medium homepage', function() {
    // can only retry this test 5 times
    this.retries(5);

    cy.visit('https://medium.com');
  })

```
- Leverage CLI options
```
mocha -h
//From your project you can use this command instead
npm test -- -h
```

### Watching test files
```
# -A, --async-only flag forces all tests to require a callback function or return a promise
mocha --async-only

# forces Mocha.js to bail after the first test failure
mocha --bail
```
### Handling timeouts and slow tests

```
# set the timeout for your test cases, default of 2 seconds
mocha -t 3000
mocha --no-timeouts
```
- run only tests and test suites that contain the specified string.

`mocha -f array`

- Including files and modules

`mocha --require should`

- Interface and reporter

`mocha --ui exports`

### Run Mocha tests on the browser

Every release of Mocha.js contains builds of ./mocha.css and ./mocha.js for use in the browser
setup to run Mocha tests on the browser


```
### Set up a simple server
 to serve the public files

```
npm install --save-dev live-server


/* package.json */

{
  "scripts": {
    "test": "mocha",
    "test:browser": "live-server --port=9000 --mount=/:public"
  }
}
```

The test output on the browser should look like [this](https://blog.logrocket.com/wp-content/uploads/2018/08/mocha-browser-testing.jpg)


### How to test asynchronous code ?

    1. A callback function
    2. Promises (for environments that support for promises)
    3. async/await (for environments that support async functions)
