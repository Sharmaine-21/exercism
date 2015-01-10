(in-package #:cl-user)
(defpackage #:robot
  (:use #:common-lisp)
  (:export #:gen-name #:build-robot #:robot-name #:reset-name))

(in-package #:robot)

(setf *random-state* (make-random-state t))

(defparameter *used-names* '())

(defun gen-name ()
  (let* ((chars "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
         (nums "1234567890"))
    (concatenate 'string
                 (coerce
                  (loop repeat 2 collect
                       (aref chars (random (length chars) *random-state*))) 'string)
                 (coerce
                  (loop repeat 3 collect
                       (aref nums (random (length nums) *random-state*))) 'string))
    ))

(defun set-name (bot)
  (let ((tname (gen-name)))
    (loop while (find tname *used-names* :test #'string=) do
         (setq tname (gen-name)))
    (setf *used-names* (cons tname *used-names*))
    (rplacd (assoc 'name bot) tname))
  )

(defun build-robot ()
  (let ((new-bot '((name . ""))))
    (set-name new-bot)
    new-bot))


(defun robot-name (robot)
  (cdr (assoc 'name robot)))

(defun reset-name (robot)
  (set-name robot)
  robot)
*used-names*
