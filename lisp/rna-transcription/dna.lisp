(in-package #:cl-user)
(defpackage #:dna
  (:use #:cl)
  (:export #:to-rna))
(in-package #:dna)

(defparameter *mapping*
 )



(defun to-rna (str)
  "Transcribe a string representing DNA nucleotides to RNA."
  (let ((mapping  '((#\G . #\C) (#\C . #\G) (#\T . #\A) (#\A . #\U))))
    ()
    )
  )
