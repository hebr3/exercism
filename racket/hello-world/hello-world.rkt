#lang racket

(provide hello)

(define (hello [w "World"])
  (string-append "Hello, " w "!"))