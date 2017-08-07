#lang racket

(provide to-roman)

(define (<X s)
  (let ([S (modulo s 10)])
    (cond [(< S 4) (make-string S #\I)]
          [(= S 4) "IV"]
          [(= S 5) "V"]
          [(= S 6) "VI"]
          [(= S 7) "VII"]
          [(= S 8) "VIII"]
          [(= S 9) "IX"])))
(define (<C s)
  (let ([S (modulo (quotient s 10) 10)])
    (cond [(< S 4) (make-string S #\X)]
          [(= S 4) "XL"]
          [(= S 5) "L"]
          [(= S 6) "LX"]
          [(= S 7) "LXX"]
          [(= S 8) "LXXX"]
          [(= S 9) "XC"])))
(define (<M s)
  (let ([S (modulo (quotient s 100) 10)])
    (cond [(< S 4) (make-string S #\C)]
          [(= S 4) "CD"]
          [(= S 5) "D"]
          [(= S 6) "DC"]
          [(= S 7) "DCC"]
          [(= S 8) "DCCC"]
          [(= S 9) "CM"])))
(define (>M s)
  (let ([S (quotient s 1000)])
    (make-string S #\M)))
(define (to-roman s)
  (string-append (>M s) (<M s) (<C s) (<X s)))
