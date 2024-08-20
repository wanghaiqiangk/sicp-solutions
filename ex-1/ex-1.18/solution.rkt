#lang sicp

(define (fast-multiply a b)
  (define (fast-multiply-iter a b c)
    (cond ((= b 0) c)
          ((even? b) (fast-multiply-iter (double a) (halve b) c))
          (else (fast-multiply-iter a (- b 1) (+ a c)))))
  (define (double x)
    (+ x x))
  (define (halve x)
    (/ x 2))
  (fast-multiply-iter a b 0))