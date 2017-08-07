#lang racket

(provide word-count)

(define (word-count s)
  (define dict (make-hash))
  (for ([i (string-split s)])
    (let ([t (hash-ref dict i 0)])
      (hash-set! dict i (add1 t))))
  dict) 
