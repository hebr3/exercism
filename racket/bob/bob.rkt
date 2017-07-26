#lang racket

(provide response-for)

; This can be improved with regex however,
; I wanted to see if I could do it without.
(define (response-for s)
  (define (silence? s)
    (for/and ([i s]) (char-whitespace? i)))
  (define (yell? s)
    (and (equal? s (string-upcase s))
         (for/or ([i s]) (char-alphabetic? i))))
  (define (question? s)
    (string-suffix? s "?"))
  (cond
    [(silence? s) "Fine. Be that way!"]
    [(yell? s) "Whoa, chill out!"]
    [(question? s) "Sure."]
    [else "Whatever."]))

