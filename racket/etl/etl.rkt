#lang racket

(provide etl)

(define (etl h)
  (define translate (make-hash))
  (for* ([i (hash-keys h)]
         [j (hash-ref h i)])
    (if (< i 0)
        (raise)
        (hash-set! translate (string-downcase j) i)))
  translate)
