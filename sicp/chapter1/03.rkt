#lang sicp

(#%require rackunit)

(define (square a)
  (* a a))

(define (sum-of-squares a b)
  (+ (square b) (square a)))

(define (>= a b)
  (not (< a b)))

(define (square-sum-of-two-largest a b c)
  (cond ((and (>= a c)
              (>= b c))
         (sum-of-squares a b))
        ((and (>= a b)
              (>= c b))
         (sum-of-squares a c))
        (else
          (sum-of-squares b c))))

(check-equal? (square-sum-of-two-largest 1 2 3) 13)
(check-equal? (square-sum-of-two-largest 4 2 3) 25)
(check-equal? (square-sum-of-two-largest 0 0 0) 0)
(check-equal? (square-sum-of-two-largest 1 0 1) 2)
(check-equal? (square-sum-of-two-largest -5 3 2) 13)
