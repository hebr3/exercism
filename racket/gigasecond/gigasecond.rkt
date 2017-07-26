#lang racket

(provide add-gigasecond)

(require racket/date)

(define (add-gigasecond x)
  (seconds->date (+ (expt 10 9)
                    (date->seconds x))))