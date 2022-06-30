#lang sicp

(#%require rackunit)

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

; original good-enough? rocedure
; (from 1.1.7 "Example: Square Roots by Newton’s Method")
(define (good-enough-old? guess x)
  (< (abs (- (* guess guess) x)) 0.001))

(define (sqrt-iter-old guess x)
  (if (good-enough-old? guess x)
      guess
      (sqrt-iter-old (improve guess x) x)))

(define (square-root-old x)
  (sqrt-iter-old 1.0 x))

; EXERCISE:
; An alternative strategy for implementing good-enough?
; is to watch how guess changes from one iteration to the next
; and to stop when the change is a very small fraction of the guess.
; Design a square-root procedure that uses this kind of end test.

;Modified good-enough? procedure
(define (good-enough? prev-guess guess)
  (< (abs (- prev-guess guess)) 0.001))

(define (sqrt-iter prev-guess guess x)
  (if (good-enough? prev-guess guess)
      guess
      (sqrt-iter guess (improve guess x) x)))

(define (square-root x)
  (sqrt-iter 0 1.0 x))

(check-equal? (round (* 1000 (square-root 0.01))) 100.0)
(check-equal? (round (* 1000 (square-root 1))) 1000.0)
(check-equal? (round (* 1000 (square-root 9))) 3000.0)
(check-equal? (round (* 1000 (square-root 100))) 10000.0)
