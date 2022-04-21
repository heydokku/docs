### Features

Is Mocha.js a BDD tool?


Mocha.js *provides a variety of interfaces* for defining test suites, hooks, and individual tests, including TSS, Exports, *QUnit*, and Require.

The default interface is BDD.

Behavior-driven development (BDD) aims to help developers build software that is predictable, resilient to changes, and not error-prone. It evolved from test-driven development (TDD), which requires you to:

```using BDD interface
// Here is what a test suite defined using the BDD interface looks like:

// begin a test suite of one or more tests
describe('#sum()', function() {

  // add a test hook
  beforeEach(function() {
    // ...some logic before each test is run
  })

  // test a functionality
  it('should add numbers', function() {
    // add an assertion
    expect(sum(1, 2, 3, 4, 5)).to.equal(15);
  })

  // ...some more tests

})
```
Using [chai](chai)

### Steps:

    Write tests for the required software functionality Run the tests for the software functionality

    Implement the software functionality

    Fix bugs and refactor until all tests pass

    Repeat the cycle for any new functionality

### Config

```package.json
{
  "scripts": {
    "test": "mocha"
  }
}
```

With this setup, you can simply run the tests in your project using this simple command:

```
npm test
```
### The main difference between TDD and BDD is

that BDD calls for writing test cases in a shared language to simplify communication between technical and nontechnical stakeholders, such as developers, QA teams, and business leaders

[ref](https://blog.logrocket.com/a-quick-and-complete-guide-to-mocha-testing-d0e0ea09f09d/#whatismochajs)

### Testing asynchronous code with Mocha.js

Why: most Node.js applications require a lot of asynchronous code
You can use any of the following to test asynchronous code with Mocha.js.

    A callback function
    Promises (for environments that support for promises)
    async/await (for environments that support async functions)
