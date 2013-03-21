// Generated by CoffeeScript 1.5.0
var messages, testcase;

testcase = new MickrigTestCase("MickrigTest");

testcase.test("expect() should be an object", function() {
  return expect(typeof expect()).to().be('object');
});

testcase.test("expect() object should have to() function", function() {
  return expect(typeof expect(true).to).to().be('function');
});

testcase.test("expect() object should have notTo() function", function() {
  return expect(typeof expect(true).notTo).to().be('function');
});

testcase.test("expect(true).to() should return an object", function() {
  return expect(typeof expect(true).to()).to().be('object');
});

testcase.test("expect(true).notTo() should return an object", function() {
  return expect(typeof expect(true).notTo()).to().be('object');
});

testcase.test("expect(true).to() should have be() function", function() {
  return expect(typeof expect(true).to().be).to().be('function');
});

testcase.test("expect(true).to() should have beTrue() function", function() {
  return expect(typeof expect(true).to().beTrue).to().be('function');
});

testcase.test("expect(true).to() should have beFalse() function", function() {
  return expect(typeof expect(true).to().beFalse).to().be('function');
});

testcase.test("failing test should throw exception", function() {
  return expect(function() {
    return expect(true).to().beFalse();
  }).to().throwException();
});

testcase.test("successful test should not throw exception", function() {
  return expect(function() {
    return expect(true).to().beTrue();
  }).notTo().throwException();
});

messages = testcase.run();
