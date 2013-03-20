mickrigtest-js
==============

MickrigTest.js is a minimal test system for JavaScript written in CoffeeScript

Compiling the CoffeeScript
--------------------------

  coffee -clb mickrigtest.coffee

Usage
-----

You can test something to be true:

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

Copyright
---------

Copyright 2013 by Mathias Karstädt
