testcase = new MickrigTestCase("MickrigTest")

testcase.test "expect() should be an object", ->
  expect(typeof expect()).to().be('object')

testcase.test "expect() object should have to() function", ->
  expect(typeof expect(true).to).to().be('function')

testcase.test "expect() object should have notTo() function", ->
  expect(typeof expect(true).notTo).to().be('function')

testcase.test "expect(true).to() should return an object", ->
  expect(typeof expect(true).to()).to().be('object')

testcase.test "expect(true).notTo() should return an object", ->
  expect(typeof expect(true).notTo()).to().be('object')

testcase.test "expect(true).to() should have be() function", ->
  expect(typeof expect(true).to().be).to().be('function')

testcase.test "expect(true).to() should have beTrue() function", ->
  expect(typeof expect(true).to().beTrue).to().be('function')

testcase.test "expect(true).to() should have beFalse() function", ->
  expect(typeof expect(true).to().beFalse).to().be('function')

messages = testcase.run()