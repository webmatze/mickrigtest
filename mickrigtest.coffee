expect = (test, desc) ->
  truthy = true
  check = (toCheck, checkValue) ->
    (if toCheck is truthy then true else throw "expected '" + ((if desc then desc else test)) + "' " + ((if truthy then "to be" else "not to be")) + " '#{checkValue}'")

  expectations =
    be: (value) ->
      check (test is value), value

    beTrue: ->
      check (test is true), "true"

    beFalse: ->
      check (test is false), "false"

  notTo: ->
    truthy = false
    expectations

  to: ->
    truthy = true
    expectations
