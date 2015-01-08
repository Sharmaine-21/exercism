(in-package #:cl-user)
(defpackage #:robot
  (:use #:common-lisp)
  (:export #:gen-name #:build-robot #:robot-name #:reset-name))

(in-package #:robot)

(defparameter *used-names* '('init))

(defun gen-name ()
  (let* ((chars "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
        (nums "1234567890")
        (new-name (concatenate 'string
                               (coerce
                                (loop repeat 2 collect
                                     (aref chars (random (length chars)))) 'string)
                               (coerce
                                (loop repeat 3 collect
                                     (aref nums (random (length nums)))) 'string)))) new-name
    ))

(defun build-robot ()
  (let ((new-bot '((name . "")))
        (tname (gen-name)))
    (loop while (member tname *used-names*) do
         (setq tname (gen-name)))
    (cons tname *used-names*)
    (rplacd (assoc 'name new-bot) tname)
    new-bot))


(defun robot-name (robot)
  (cdr (assoc 'name robot)))

(defun reset-name (robot)
  (rplacd (assoc 'name robot) (gen-name))
  robot)
