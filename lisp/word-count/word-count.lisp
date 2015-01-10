(in-package #:cl-user)
(defpackage #:phrase
  (:use #:cl)
  (:export #:word-count))
(in-package #:phrase)
(ql:quickload "split-sequence")


(defun normalize (words)
  (mapcar #'(lambda (word)
              (string-downcase
               (remove-if-not #'alphanumericp word))) words))

(defun frequencies (list)
  (let ((k 1) (list (sort list #'string<)))
    (loop for (i . j) on list
       when (string= i (car j)) do (incf k)
       else collect (cons i k) and do (setf k 1))))

(defun word-count (phrase)
  (let ((words (remove-if ;; Need to clean this up; normalize leaves empty strings.
                (lambda (w) (string= w ""))
                (normalize
                 (split-sequence:split-sequence #\space phrase)))))
    (frequencies words)))
