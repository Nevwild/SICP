;“Every reader should ask himself periodically “Toward what end, toward what end?”—but do not ask it too often lest you pass up the fun of programming for the constipation of bittersweet philosophy.”

;Exercise 1.6
;Setup from text:

(define (sqrt-iter guess x)
	(if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x) 
 	x)))

(define (average x y) 
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))



;Alyssa P. Hacker doesn’t see why if needs to be provided as a special form. “Why can’t I just define it as an ordinary procedure in terms of cond?” she asks. Alyssa’s friend Eva Lu Ator claims this can indeed be done, and she defines a new version of if:

(define (new-if predicate 
                then-clause 
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
;Eva demonstrates the program for Alyssa:

(new-if (= 2 3) 0 5)
5

(new-if (= 1 1) 0 5)
0

;Delighted, Alyssa uses new-if to rewrite the square-root program:

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

;What happens when Alyssa attempts to use this to compute square roots? Explain.”


;Value: sqrt-iter

1 ]=> 
;Value: average

1 ]=> 
;Value: improve

1 ]=> 
;Value: good-enough?

1 ]=> 
;Value: sqrt

1 ]=> 
;Value: new-if

1 ]=> 
;Value: 5

1 ]=> 
;Value: 5

1 ]=> 
;Value: 0

1 ]=> 
;Value: 0

1 ]=> 
;Value: sqrt-iter

1 ]=> (sqrt 124)

;Aborting!: maximum recursion depth exceeded

1 ]=> (define (sqrt-iter guess x)
	(if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x) 
 	x)))

;Value: sqrt-iter

1 ]=> (sqrt 124)

;Value: 11.135528727830582

1 ]=> (define (sqrt-iter guess x)
	(new-if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x) 
 	x)))

;Value: sqrt-iter

1 ]=> (sqrt 124)

;Aborting!: maximum recursion depth exceeded

1 ]=> (sqrt 12)

;Aborting!: maximum recursion depth exceeded

1 ]=> 9

;Value: 9

1 ]=> (sqrt 9)

;Aborting!: maximum recursion depth exceeded

1 ]=> 