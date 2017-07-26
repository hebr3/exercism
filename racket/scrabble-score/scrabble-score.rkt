#lang racket

(provide score)
(define ht (make-hash))

(define (convert l n)
  (for ([i l]) (hash-set! ht i n)))

(for-each convert
          '((#\A #\E #\I #\O #\U #\L #\N #\R #\S #\T)
            (#\D #\G)
            (#\B #\C #\M #\P)
            (#\F #\H #\V #\W #\Y)
            (#\K)
            (#\J #\X)
            (#\Q #\Z))
          '(1 2 3 4 5 8 10))

(define (score s)
  (for/sum ([i (string->list s)])
    (hash-ref ht (char-upcase i) 0)))
