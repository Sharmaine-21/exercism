(define-module (anagram)
  #:export (anagrams-for))

(define (anagram-equal a b)
  (let ((sorted-string (lambda (s) (apply string (sort (string->list s) char-ci<?)))))
    (and
     (string-ci=? (sorted-string a)
                  (sorted-string b))
     (not (string-ci=? a b)))))

(define (anagrams-for subject candidates)
  (filter (lambda (w) (anagram-equal w subject)) candidates))
