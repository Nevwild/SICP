;Exercise 1.8: Newton’s method for cube roots is based on the fact that if y is an approximation to the cube root of x , then a better approximation is given by the value

(/ (+(/ x (square y)) 
     (* 2 y))
   3)

;Use this formula to implement a cube-root procedure analogous to the square-
;root procedure. (In 1.3.4 we will see how to implement Newton’s method in
;general as an abstraction of these square-root and cube-root procedures.)

;SOLUTION

(define (cube-root x)
  (define (cube x)
    (* x x x))
  (define (cube-root-iter guess old-guess x)
    (if (good-enough? guess old-guess)
        guess
      (cube-root-iter (improve guess x) guess x)))
  (define (improve guess x)
    (/ (+(/ x 
            (square guess)) 
         (* 2 guess))
       3))
  (define (good-enough? guess old-guess)
    (< (abs (-  guess old-guess)) 0.001)) 
  (cube-root-iter 1.0 0 x))