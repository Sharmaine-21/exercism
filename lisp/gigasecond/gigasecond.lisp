(in-package #:cl-user)
(defpackage #:gigasecond
  (:use #:cl)
  (:export #:calculate #:from))
(in-package #:gigasecond)

(defun calculate (udate)
  (let ((decoded (multiple-value-list (decode-universal-time udate))))
    (list (sixth decoded) (fifth decoded) (fourth decoded))))

(defun from (year month day)
  (let ((gig (expt 10 9))
        (date (encode-universal-time 0 0 0 day month year)))
    (calculate (+ gig date))))
