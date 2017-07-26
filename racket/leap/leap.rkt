#lang racket

(provide leap-year?)

(define (leap-year? y)
  (and (= 0 (modulo y 4))
       (or (not (= 0 (modulo y 100)))
           (= 0 (modulo y 400)))))