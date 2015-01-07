(defpackage #:leap
  (:use #:common-lisp)
  (:export #:leap-year-p))
(in-package #:leap)

(defun leap-year-p (year)
  (cond ((eq (mod year 400) 0) t)
        ((and (eq (mod year 4) 0) (not (eq (mod year 100) 0))) t)
        (t nil))
  )
