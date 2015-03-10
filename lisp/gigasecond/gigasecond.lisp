(in-package #:cl-user)
(defpackage #:gigasecond
  (:use #:cl)
  (:export #:from))
(in-package #:gigasecond)

(defun calcudate (udate)
  (multiple-value-bind
      (s m h day month year)
      (decode-universal-time udate)
    (declare (ignore s m h))
    (list year month day)))

(defun from (year month day)
  (let ((gig (expt 10 9))
        (date (encode-universal-time 0 0 0 day month year)))
    (calcudate (+ gig date))))
