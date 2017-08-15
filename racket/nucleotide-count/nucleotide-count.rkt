#lang racket

(provide nucleotide-counts)

(define (nucleotide-counts str)
  (define dna-count (make-hash))
  (hash-set! dna-count #\A 0)
  (hash-set! dna-count #\C 0)
  (hash-set! dna-count #\G 0)
  (hash-set! dna-count #\T 0)
  (for ([i str])
    (hash-set! dna-count i (add1 (hash-ref dna-count i))))
  (sort (hash->list dna-count) #:key car char<?))
