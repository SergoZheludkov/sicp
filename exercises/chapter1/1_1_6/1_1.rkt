#lang sicp

#| Exercise 1.1. Below is a sequence of expressions. What is the result printed by the interpreter in response to each expression? Assume that the sequence is to be evaluated in the order in which it is presented. |#

10 #| result: 10 |#

(+ 5 3 4) #| result: 12 |#

(- 9 1) #| result: 8 |#

(/ 6 2) #| result: 3 |#

(+ (* 2 4) (- 4 6)) #| result: 6 |#

(define a 3) #| result: nothing | a = 3 |#
(define b (+ a 1)) #| result: nothing | b = 4 |#

(+ a b (* a b)) #| result: 19 |#

(= a b) #| result: #f |#

(if (and (> b a) (< b (* a b)))
  b
  a) #| result: 4|#

(cond ((= a 4) 6)
  ((= b 4) (+ 6 7 a))
  (else 25)) #| result: 16 |#

(+ 2 (if (> b a) b a)) #| result: 6 |#

(* (cond ((> a b) a)
  ((< a b) b)
  (else -1))
  (+ a 1)) #| result: 16 |#
