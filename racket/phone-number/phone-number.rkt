#lang racket

(provide numbers area-code pprint)

(define (clean-number s)
  (list->string (filter char-numeric? (string->list s))))

(define (test-length? n)
  (let ([len (string-length n)]
        [fst (string-ref n 0)])
    (cond
      [(<= len 9) #f]
      [(and (= 11 len) (eq? #\1 fst)) #t]
      [(= 10 len) #t]
      [else #f])))

(define (numbers s)
  (let* ([s2 (clean-number s)]
         [n (string-length s2)]
         [t (test-length? s2)])
    (cond
      [(and t (= n 11)) (substring s2 1)]
      [t s2]
      [else "0000000000"])))

(define (area-code s)
  (substring (numbers s) 0 3))

(define (pprint s)
  (let* ([s2 (numbers s)]
         [f (area-code s2)]
         [s (substring s2 3 6)]
         [t (substring s2 6)])
    (string-append "(" f ") " s "-" t)))
