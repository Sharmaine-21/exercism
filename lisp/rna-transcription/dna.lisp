(in-package #:cl-user)
(defpackage #:dna
  (:use #:cl)
  (:export #:to-rna))
(in-package #:dna)



(defun to-rna (str)
  "Transcribe a string representing DNA nucleotides to RNA."
  (let* ((mapping  '((#\G . #\C) (#\C . #\G) (#\T . #\A) (#\A . #\U)))
         (seq (loop for char across str collect char))
         (dna (mapcar #'car mapping))
         )
    (cond ((set-difference seq dna) (error "Bad nucleotide strand"))
          (t (coerce (loop for char across str do
                   (setf char (cdr (assoc char mapping)))
                 collect char) 'string)))))
