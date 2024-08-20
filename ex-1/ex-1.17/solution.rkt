#lang sicp

(define (fast-multiply a b)
  (cond ((= b 0) 0)
        ((even? b) (fast-multiply (double a) (halve b)))
        (else (+ a (fast-multiply a (- b 1))))))

(define (double a)
  (+ a a))

(define (halve b)
  (/ b 2))