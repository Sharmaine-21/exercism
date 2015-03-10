(in-package #:cl-user)
(defpackage #:phone
  (:use #:common-lisp)
  (:export #:numbers #:area-code #:pretty-print))

(in-package #:phone)



(defun numbers (phone)
  (let ((invalid "0000000000")
        (phone (remove-if-not #'digit-char-p phone)))
    (cond ((and (= (length phone) 11)
                (= (position #\1 phone) 0))
           (remove #\1 phone :start 0 :end 1))
          ((= (length phone) 10) phone)
          (t invalid))))

(defun area-code (phone)
  (subseq (numbers phone) 0 3))

(defun pretty-print (phone)
  (setf phone (numbers phone))
  (let ((ac (subseq phone 0 3))
        (ex (subseq phone 3 6))
        (ln (subseq phone 6 10)))
    (format nil "(~A) ~A-~A" ac ex ln)))
