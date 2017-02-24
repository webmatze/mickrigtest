mickrigtest-js
==============

**MickrigTest.js** is a minimal test system for JavaScript written in CoffeeScript

Compiling the CoffeeScript
--------------------------

Using coffee cli:

    coffee -cb mickrigtest.coffee

Or using a npm task:

    npm run compile


Running Tests
-------------

    npm run test

Usage of mickrigtest.js
-----------------------

Include the script into your HTML page:

    <script type="text/javascript" src="mickrigtest.js"></script>

Then you can test something to be true:

    expect(true).to().beTrue()

Or alternatively:

    expect(true).to().be(true)

You can also test something to be false:

    expect(false).to().beFalse()

Or alternatively:

    expect(false).to().be(false)

You can test something NOT to be something:

    expect(false).notTo().beTrue()

And you can also add a description to your test:

    expect(1 > 2, '1 > 2').to().beFalse()
    
You can test for exceptions. But you have to wrap your code into an anonymous function:

    expect(function() {
        throw "an exception"
    }).to().throwException()
    
Usage of MickrigTestCase
------------------------

You can also build test cases by using the **MickrigTestCase** class.
To use it you have to include the *mickrigtestcase.js* into you page, too.

    <script type="text/javascript" src="mickrigtestcase.js"></script>
    
Then you can write your first test case:

    testcase = new MickrigTestCase("My first test");
    testcase.test("true should be true", function() {
        expect(true).to().beTrue();
    });
    testcase.test("true should not be false", function() {
        expect(true).notTo().be(false);
    });
    messages = testcase.run();

The *run()* function of **MickrigTestCase** returns an Array of all messages generated by the test case.
You can use this Array to display the messages on your page or displaying them using *console.log()*.
    
    while(message = messages.shift()) { console.log(message) }

Copyright
---------

Copyright 2013-2017 by Mathias Karstädt
