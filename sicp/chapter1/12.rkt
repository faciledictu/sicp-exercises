#lang sicp

(#%require rackunit)

(define (pascal row col)
  (cond ((< row col) 0) 
        ((= row 1) 1)
        ((= col row) 1)
        ((= col 1) 1)
        (else (+
               (pascal (- row 1) (- col 1))
               (pascal (- row 1) col)))))

(check-equal? (pascal 1 1) 1)
(check-equal? (pascal 2 1) 1)
(check-equal? (pascal 2 2) 1)
(check-equal? (pascal 5 3) 6)
(check-equal? (pascal 5 6) 0)
