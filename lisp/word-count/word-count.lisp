(in-package #:cl-user)
(defpackage #:phrase
  (:use #:cl)
  (:export #:word-count))
(in-package #:phrase)

(defun split-by-one-space (string)
  "Returns a list of substrings of string divided by ONE space each.
  Note: Two consecutive spaces will be seen as if there were an empty
  string between them."
  (loop for i = 0 then (1+ j)
     as j = (position #\Space string :start i)
     collect (subseq string i j)
     while j))



(defun word-count (phrase)
  )
