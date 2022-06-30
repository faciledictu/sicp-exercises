#lang sicp

(#%require rackunit)

; Newton’s method for cube roots is based on the fact that if y is an approximation
; to the cube root of x, then a better approximation is given by the value
;
;       x/y^2 + 2y
;       -----------
;            3
;
; Use this formula to implement a cube-root procedure analogous to the square-root procedure. 

(define (improve guess x)
  (/ (+ (/ x (* guess guess))
        (* 2 guess))
     3))

(define (good-enough? prev-guess guess)
  (< (abs (- prev-guess guess)) 0.00001))

(define (cubert-iter prev-guess guess x)
  (if (good-enough? prev-guess guess)
      guess
      (cubert-iter guess (improve guess x) x)))

(define (cube-root x)
  (cubert-iter 0 1.0 x))

(check-equal? (round (* 1000 (cube-root 0.001))) 100.0)
(check-equal? (round (* 1000 (cube-root 1))) 1000.0)
(check-equal? (round (* 1000 (cube-root 27))) 3000.0)
(check-equal? (round (* 1000 (cube-root 1000))) 10000.0)
