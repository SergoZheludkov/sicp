#lang sicp

(#%require rackunit)

#| Exercise 1.3. Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers. |#

(define (square num)
  (* num num))

(define (sum-of-square a b) 
  (+ (square a) (square b)))

(define (sum-of-squares-two-biggest a b c)
  (cond 
    ((and (< a b) (< a c)) (sum-of-square b c))
    ((and (< b a) (< b c)) (sum-of-square a c))
    ((and (< c a) (< c b)) (sum-of-square a b))
    (else (sum-of-square a a))))

#| Tests |#

(check-equal? (square 3) 9)
(check-equal? (square 5) 25)
(check-equal? (sum-of-square 3 5) 34)
(check-equal? (sum-of-square 2 4) 20)

(check-equal? (sum-of-squares-two-biggest 2 3 4) 25)
(check-equal? (sum-of-squares-two-biggest 9 3 6) 117)
(check-equal? (sum-of-squares-two-biggest 8 8 8) 128)