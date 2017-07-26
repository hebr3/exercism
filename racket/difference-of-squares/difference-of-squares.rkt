#lang racket

(provide sum-of-squares square-of-sums difference)

(define (sum-of-squares n) ; OEIS A000330
  (/ (* n (+ n 1) (+ (* 2 n) 1)) 6))
;  (for/sum ([i (add1 n)])
;    (sqr i)))

(define (square-of-sums n) ; OEIS A000537
  (sqr (/ (* n (+ n 1)) 2)))
;  (sqr (for/sum ([i (add1 n)]) i)))

(define (difference n)
  (- (square-of-sums n)
     (sum-of-squares n)))