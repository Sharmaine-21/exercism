(in-package #:cl-user)
(defpackage #:bob
  (:use #:cl)
  (:export #:shouting?
           #:asking?
           #:blank?
           #:response-for))
(in-package #:bob)

(defun shouting? (phrase)
  (and
   (find-if #'alpha-char-p phrase :from-end t)
   (string= (string-upcase phrase) phrase)))

(defun asking? (phrase)
  (and (not (shouting? phrase))
       (eq (position #\? (reverse phrase)) 0)))

(defun blank? (phrase)
  (not (find-if #'(lambda (c) (char/= #\space c)) phrase)))

(defun response-for (input)
  (cond ((shouting? input) "Whoa, chill out!")
        ((asking? input) "Sure.")
        ((blank? input) "Fine. Be that way!")
        (t "Whatever.")))
