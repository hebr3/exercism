#lang racket

(provide hamming-distance)

(define (hamming-distance a b)
  (for/sum ([i (string-length a)]
            #:when (not (equal? (string-ref a i)
                                (string-ref b i))))
    1))