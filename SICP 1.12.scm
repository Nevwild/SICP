;Exercise 1.12: The following pattern of numbers is called Pascal’s triangle.

;           1
;         1   1
;       1   2   1
;     1   3   3   1
;   1   4   6   4   1
; 1   5  10   10  5   1
;
;The numbers at the edge of the triangle are all 1, and each number inside the triangle is the sum of the two numbers above it.³⁵ Write a procedure that computes elements of Pascal’s triangle by means of a recursive process.

;³⁵ The elements of Pascal’s triangle are called the binomial coefficients, because the nth row consists of the coefficients of the terms in the expansion of (x+y)^n. This pattern for computing the coefficients appeared in Blaise Pascal’s 1653 seminal work on probability theory, Traité du triangle arithmétique. According to Knuth (1973), the same pattern appears in the Szu-yuen Yü-chien (“The Precious Mirror of the Four Elements”), published by the Chinese mathematician Chu Shih-chieh in 1303, in the works of the twelfth-century Persian poet and mathematician Omar Khayyam, and in the works of the twelfth-century Hindu mathematician Bháscara Áchárya.”




(define (Pascal)
  (define (left-slope-solver a)
    (display 1)
    (display a)
    (if (= 10 a) a
      (left-slope-solver (+ 1 a))))
  (display 1)
  (left-slope-solver 1))
    

