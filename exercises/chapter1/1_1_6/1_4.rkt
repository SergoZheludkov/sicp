#lang sicp

(#%require rackunit)

#| Exercise 1.4. Observe that our model of evaluation allows for combinations whose operators are compound expressions. Use this observation to describe the behavior of the following procedure: |#

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

#| if b > 0 then a + b, esle a - b |#

(check-equal? (a-plus-abs-b 6 7) 13)
(check-equal? (a-plus-abs-b 6 -7) 13)