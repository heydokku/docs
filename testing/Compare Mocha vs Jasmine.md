[ref](https://www.codementor.io/@codementorteam/javascript-testing-framework-comparison-jasmine-vs-mocha-8s9k27za3)

If you go with Jasmine, you will likely use:

    Karma (for the test runner)
    Sinon (possibly for its fake server unless your framework provides an equivalent, like $httpBackend if you are using Angular)

If you go with Mocha, you will likely use:

    Chai (for assertions)
    Sinon (for test doubles and its fake server)
    Karma or mocha CLI (for the test runner)
