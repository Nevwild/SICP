;Exercise 1.10: The following procedure computes a mathematical function called Ackermann’s function.

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))
;1: What are the values of the following expressions?

(A 1 10)
(A 2 4)
(A 3 3)

;2: Consider the following procedures, where A is the procedure defined above:

(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))

;Give concise mathematical definitions for the functions computed by the procedures f, g, and h for positive integer values of 
n. 

;For example, (k n) computes 5n²


;;;SOLUTION 1

Values of following expressions 

(A 1 10)
;Value: 1024

(A 2 4)
;Value: 65536

(A 3 3)
;Value: 65536

;;;SOLUTION 2
(f) ;2n
(g) ;2^{n}

;SOLUTION 2 WORK
(define (f n) (A 0 n))

    1 ]=> (f 5)

;Value: 10

    1 ]=> (f 100)

;Value: 200

;Notation: 2n

(define (g n) (A 1 n))
    1 ]=> (g 3)

;Value: 8
 
    1 ]=> (g 5)

;Value: 32

    1 ]=> (g 100)

;Value: 1267650600228229401496703205376



;Lets run g through a substitution model to see how this works. 

(g 3)
;expands to
(A 1 3)
;expands to alternative
    (A (- 1 1)
       (A 1 (- 3 1)))
;simplifies to
        (A 0 (A 1 2))
;expands to the alternative
        (A 0 (A 	(- 1 1)
                (A 1 (- 2 1))))
;simplifies to 
        (A 0 (A 0 (A 1 1)))
;simplifies to 
        (A 0 (A 0 2))
;Simplifies to
        (A 0 4)
;Returns
        8
;2 to the 3rd power is 8, and 2 to the 5th power is 32. so 2^{n} is the answer

(define (h n) (A 2 n))
1 ]=> (h 0)

;Value: 0

1 ]=> (h 1)

;Value: 2

1 ]=> (h 2)

;Value: 4

1 ]=> (h 3)

;Value: 16

1 ]=> (h 4)

;Value: 65536

1 ]=> (h 5)

;Aborting!: maximum recursion depth exceeded

;Substitution model!



(define (k n) (* 5 n n))




