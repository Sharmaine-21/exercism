(define-module (leap-year)
  #:export (leap-year?))

(define (leap-year? year)
  (or (zero? (modulo year 400))
      (and (zero? (modulo year 4))
           (not (zero? (modulo year 100))))))
