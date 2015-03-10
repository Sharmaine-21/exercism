(*
Answers to `hey` like a teenager.

## Examples

  # response_for ""
  "Fine. Be that way!"

  # response_for "Do you like math?"
  "Sure."

  # response_for "HELLO!"
  "Woah, chill out!"

  # response_for "Coding is cool."
  "Whatever."
 *)

let shout = Str.regexp

val response_for : string -> string
