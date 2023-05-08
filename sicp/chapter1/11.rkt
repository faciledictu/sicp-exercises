#lang sicp

(#%require rackunit)

#|
  A function f is defined by the rule that f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3. Write a procedure that computes f by means of a recursive process. Write a procedure that computes f by means of an iterative process.
|#

(define (f-tree n)
  (cond ((< n 3) n)
        (else (+ (f-tree (- n 1))
                 (* 2 (f-tree (- n 2)))
                 (* 3 (f-tree (- n 3)))))))

(define (f-iter n)
  (define (iter a b c count)
    (if (< count 1)
      c
      (iter
        (+ a (* 2 b) (* 3 c))
        a
        b 
        (- count 1))))
  (iter 2 1 0 n))

(check-equal? (f-tree 0) 0)
(check-equal? (f-tree 1) 1)
(check-equal? (f-tree 2) 2)
(check-equal? (f-tree 4) 11)
(check-equal? (f-iter 5) (f-tree 5))
(check-equal? (f-iter 7) (f-tree 7))
