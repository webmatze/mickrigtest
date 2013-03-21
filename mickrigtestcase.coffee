MickrigTestCase = (name) ->
  tests = new Array()
  test: (name, test) ->
    tests.push
      n: name
      t: test

  runTest: (test) ->
    try
      test.t()
      "Test '" + test.n + "' successful"
    catch error
      "Test '" + test.n + "' failed: " + error

  run: ->
    messages = []
    messages.push "Running TestCase " + (name or "")
    messages.push(this.runTest test) for test in tests
    messages
