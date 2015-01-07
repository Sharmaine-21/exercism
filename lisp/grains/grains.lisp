(in-package #:cl-user)
(defpackage #:grains
  (:use #:cl)
  (:export :range :square :total))
(in-package #:grains)

(defun range (max &key (min 0) (step 1))
  (loop for n from min below max by step
     collect n))

(defun square (n)
  (let ((board (range 64)))
    (nth (- n 1) (mapcar #'(lambda (x) (expt 2 x)) board))))

(defun total ()
  (- (expt 2 64) 1))
