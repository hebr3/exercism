#lang racket

(provide square total)

(define (square x)
  (expt 2 (sub1 x)))

(define (total)
  (sub1 (expt 2 64))) ; oeis A000225
;  (for/sum ([i 64])
;    (expt 2 i)))