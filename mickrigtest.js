// Generated by CoffeeScript 2.0.0-alpha1
var expect;

module.exports = expect = function(test, desc) {
  var check, error, exception, expectations, truthy;
  truthy = true;
  exception = false;
  try {
    if (typeof test === 'function') {
      test = test();
    }
  } catch (error1) {
    error = error1;
    exception = error;
  }
  check = function(toCheck, checkValue) {
    if (toCheck === truthy) {
      return true;
    } else {
      throw new Error("expected '" + (desc ? desc : test) + "' " + (truthy ? "to be" : "not to be") + ` '${checkValue}'`);
    }
  };
  expectations = {
    be: function(value) {
      return check(test === value, value);
    },
    beTrue: function() {
      return check(test === true, "true");
    },
    beFalse: function() {
      return check(test === false, "false");
    },
    throwException: function() {
      return check(typeof exception === 'string', "an exception");
    }
  };
  return {
    notTo: function() {
      truthy = false;
      return expectations;
    },
    to: function() {
      truthy = true;
      return expectations;
    }
  };
};
