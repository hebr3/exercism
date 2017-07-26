#lang racket

(provide perfect-numbers)

(define (perfect-numbers n)
  (filter perfect? (range 1 (add1 n))))

(define (perfect? x)
  (= x (for/sum ([i (range 1 x)] #:when (= 0 (modulo x i))) i)))