object Bob {
  def isShout(phrase: String) {
    val shout = """([\d\W]*?)(?:[A-Z\s]{2,})[^a-z]*""".r
    phrase match { case shout(_*) => true}
}

  def isBlank(phrase: String) {

  }

  def isQuestion(phrase: String) {

  }

  def hey(phrase: String) {
    if (isShout(phrase)) {
      "Whoa, chill out!"
    } else {
      "Whatever."
    }
  }
}
