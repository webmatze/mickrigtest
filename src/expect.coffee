module.exports = expect = (test, desc) ->
  truthy = true
  exception = false
  try
    test = test() if typeof test is 'function'
  catch error
    exception = error

  check = (toCheck, checkValue) ->
    (if toCheck is truthy then true else throw new Error("expected '" + ((if desc then desc else test)) + "' " + ((if truthy then "to be" else "not to be")) + " '#{checkValue}'"))

  expectations =
    be: (value) ->
      check (test is value), value

    beTrue: ->
      check (test is true), "true"

    beFalse: ->
      check (test is false), "false"

    throwException: ->
      check(typeof exception is 'string', "an exception")

  notTo: ->
    truthy = false
    expectations

  to: ->
    truthy = true
    expectations


