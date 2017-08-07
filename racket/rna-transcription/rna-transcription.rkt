#lang racket

(provide to-rna)

(define (transcribe c)
  (match c
    [#\G #\C]
    [#\C #\G]
    [#\T #\A]
    [#\A #\U]))
(define (to-rna s)
  (list->string (for/list ([i s]) (transcribe i))))
