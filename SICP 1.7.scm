;Exercise 1.7: 

;The good-enough? test used in computing square roots will not be very effective for finding the square roots of very small numbers. 

;Also, in real computers, arithmetic operations are almost always performed with limited precision. ;This makes our test inadequate for very large numbers. 
;Explain these statements, with examples showing how the test fails for small and large numbers. 

;Setup for examples 
(define (sqrt x)
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
  (sqrt-iter 1.0 x))


;LARGE NUMBER EXAMPLE 
;The following input results in an infinite loop
(sqrt 1234567890123456789012345678901234567890)


;EXPLANATION: Large numbers can't be computed using this method due to floating-point number's lack of precision, which degrades further as numbers get larger. As the good-enough test is run recursively, the floating point numbers will become less and less precise. This makes it impossible for the guess to fall within the hard coded tolerance, prodicing ∞.

;SMALL NUMBER EXAMPLE
;following input
(sqrt 0.00000005)
;returns
0.03125532794385253
;correct answer is
0.00070710678

;EXPLANATION: Small numbers always fall within the tolerance of 0.001 even if the answer is orders of magnitude off, therefore returning incorrect answers almost every time. 

;An alternative strategy for implementing good-enough? is to watch how guess changes from one iteration to the next and to stop when the change is a very small fraction of the guess. 

;Design a square-root procedure that uses this kind of end test. Does this work better for small and large numbers?

;Discussion: This test works much better, but I'm not sure why. 
;Solution, non block structure 
(define (good-enough? guess old-guess)
  (< (abs (- guess old-guess)) 0.001))


(define (average x y) 
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess old-guess x)
  (if (good-enough? guess old-guess)
      guess
    (sqrt-iter (improve guess x) guess x)))


(define (sqrt x)
  (sqrt-iter 1.0 0 x))

;solution adding extra paramaters block structure 

(define (sqrt x)
  (define (good-enough? guess old-guess)
    (< (abs (- guess old-guess)) 0.0000000001))
  (define (sqrt-iter guess old-guess x)
    (define (improve guess)
      (define (average-guess y) 
        (/ (+ guess y) 2))
      (average-guess (/ x guess)))
    (if (good-enough? guess old-guess)
        guess
      (sqrt-iter (improve guess ) guess x)))
  (sqrt-iter 1.0 0 x))


;SMALL NUMBER TEST
(sqrt 0.0000005)
;Value: 0.0007071067811865475

;LARGE NUMBER TEST 
(sqrt 1234567890123456789012345678901234567890)
;Value: 3.513641828820144e19

;Solution where good enough compares the difference between the error to a small proportion of x. this requires changing very little of the original procedure. 
(define (sqrt x)
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
    (< (abs (- (square guess) x)) 
       (* 0.001 x)))
  (sqrt-iter 1.0 x))

;Tests
;Large Number Test
(sqrt 1234567890123456789012345678901234567890)
;Value: 3.5152223011041673e19

;Small Number Test
(sqrt 0.0000005)
;Value: 7.071199368719717e-4

 