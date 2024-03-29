## Testing Flutter apps

### Why need automated testing?

The more features your app has, the harder it is to test manually.
Automated tests help ensure that your app performs correctly before
you publish it, while retaining your feature and bug fix velocity.

Automated testing falls into a few categories:

* A [_unit test_](#unit-tests) tests a single function, method, or class.
* A [_widget test_](#widget-tests) (in other UI frameworks referred to
  as _component test_) tests a single widget.
* An [_integration test_](#integration-tests)
  tests a complete app or a large part of an app.

Generally speaking, a well-tested app has many unit and widget tests,
tracked by [code coverage][], plus enough integration tests
to cover all the important use cases. This advice is based on
the fact that there are trade-offs between different kinds of testing,
seen below.

|                      | Unit   | Widget | Integration |
|----------------------|--------|--------|-------------|
| **Confidence**       | Low    | Higher | Highest     |
| **Maintenance cost** | Low    | Higher | Highest     |
| **Dependencies**     | Few    | More   | Most        |
| **Execution speed**  | Quick  | Quick  | Slow        |
{:.table.table-striped}


## Unit tests

A _unit test_ tests a single function, method, or class.
The goal of a unit test is to verify the correctness of a
unit of logic under a variety of conditions.
External dependencies of the unit under test are generally
[mocked out](/cookbook/testing/mocking).

Unit tests generally don't read from or write
to disk, render to screen, or receive user actions from
outside the process running the test.

## Widget tests

A _widget test_ (in other UI frameworks referred to as _component test_)
tests a single widget. The goal of a widget test is to verify that the
widget's UI looks and interacts as expected. Testing a widget involves
multiple classes and requires a test environment that provides the
appropriate widget lifecycle context.

## Integration tests

An _integration test_ tests a complete app or a large part of an app.
The goal of an integration test is to verify that all the widgets
and services being tested work together as expected.
Furthermore, you can use integration
tests to verify your app's performance.

Generally, an _integration test_ **runs on a real device or an OS emulator**
such as iOS Simulator or Android Emulator.
The app under test is typically isolated
from the test driver code to avoid skewing the results.

## Continuous integration services

Continuous integration (CI) services allow you to run your
tests automatically when pushing new code changes.
This provides timely feedback on whether the code
changes work as expected and do not introduce bugs.

For information on running tests on various continuous
integration services, see the following:

* [Continuous delivery using fastlane with Flutter][]
* [Codemagic CI/CD for Flutter][]

[Codemagic CI/CD for Flutter]: https://blog.codemagic.io/getting-started-with-codemagic/
[Continuous delivery using fastlane with Flutter]: /docs/deployment/cd#fastlane

#### Code Cov
