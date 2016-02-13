;;; bob.el --- Bob exercise (exercism)

;;; Commentary:

;;; Code:
(eval-when-compile (require 'subr-x))

(defun response-for (phrase)
  "Provides Bob's response to PHRASE."
  (cond ((shoutp phrase) "Whoa, chill out!")
        ((string-blank-p phrase) "Fine. Be that way!")
        ((questionp phrase) "Sure.")
        (t "Whatever.")))

(defun shoutp (phrase)
  "Determines if PHRASE is shouting."
  (and (string-match "[A-Z]" phrase)
       (string= (upcase phrase) phrase)))

(defun questionp (phrase)
  "Determine if PHRASE is interrogative."
  (and (> (length phrase) 0)
       (= ?? (aref phrase (1- (length phrase))))))

(provide 'bob)
;;; bob.el ends here
