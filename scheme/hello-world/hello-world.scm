(define-module (hello-world)
  #:export (hello))

(define hello
  (lambda* (#:optional arg)
    (let ((name (or arg "world")))
      (string-concatenate (list "Hello, " name "!")))))
