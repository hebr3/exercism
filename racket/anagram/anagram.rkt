#lang racket

(provide anagrams-for)

(define (sort-string s)
  (list->string (sort (string->list s) char<?)))
(define (anagrams-for x l)
  (define (anagram? s)
    (let ([x2 (string-downcase x)]
          [s2 (string-downcase s)])
      (and (not (equal? x2 s2))
           (equal? (sort-string x2) (sort-string s2)))))
  (filter anagram? l))
