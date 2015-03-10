class Bob

  hey: (what) ->
    if what is what.toUpperCase() and what.match /[A-Z]+/
      "Whoa, chill out!"
    else if what.match /.+\?$/
      "Sure."
    else if what.trim().length is 0
      "Fine. Be that way!"
    else
      "Whatever."

module.exports = Bob
