;;; hello-world.el --- Hello World Exercise (exercism)

;;; Commentary:

;;; Code:

(defun hello (&optional name)
  "Say hello to NAME."
  (let ((who (or name "World")))
    (concat "Hello, " who "!")))

(provide 'hello-world)
;;; hello-world.el ends here
