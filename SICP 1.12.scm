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



;in this section I was attempting to build out a procedure that solved a pair, and used the return value to solve the pair on the line below. The problem with this was that I couldn't figure out how to do this in a way that printed things in the right order. I was getting the right answers, but never in the right order. 
(define (Pascal)
  (define (left-slope-solver a)
    (display 1)
    (display a)
    (if (= 10 a) a
      (left-slope-solver (+ 1 a))))
  (display 1)
  (left-slope-solver 1))

(define (pair-solver a b c)
  (cond ((= 1 a) (pair-solver 1 (+ a b) (+ b c)));if at start of line, calculate out next line
        ((= 1 c) (pair-solver (+ a b) (+ b c) 1));if at finish of line, finish line solver
        (else (next-line (+ a b) (+ b c))   
              )))

((define (current-line a b c)
   body))

(define (next-line x y z))


;Finally, I looked at the footnote included above, and I saw the words "binomial coefficients" so I looked them up. I then looked up pascals triangle, and saw the relationship betwen pascals and binomial coefficients. This led to the discovery of n choose k, which made a procuedure to print out the triangle fairly easy to define recursively.  

(define (pascal)
  (define (n-choose-k n k)
    (define (factorial x)
      (define (iter product counter);chose iterative to prevent exceeding recursive depth. 
        (if (> counter x)
            product
          (iter (* counter product)
                (+ counter 1))))
      (iter 1 1))
    (/ (factorial n)
       (* (factorial k)
          (factorial (- n k)))))
  (define (line-solver n k)
    (display (n-choose-k n k))
    (cond ((= n 5) (n-choose-k n k));Keeps this thing from running forever, returns 1
          ((= n k) (line-solver (+ n 1) 0))
          (else (line-solver n (+ k 1)))))
  (line-solver 0 0))
  

;Here is a version that lets you calculate the value of any value from a row and column

(define (pascal n k)
  (define (n-choose-k n k)
    (define (factorial x)
      (define (iter product counter);chose iterative to prevent exceeding recursive depth. 
        (if (> counter x)
            product
          (iter (* counter product)
                (+ counter 1))))
      (iter 1 1))
    (/ (factorial n)
       (* (factorial k)
          (factorial (- n k)))))

  (n-choose-k n k))
    

;after looking at other solutions online I found that my initial instinct was on the right path, but only if i was able to calculate a specific value instead of printing out the triangle. This procedure takes the value and works its way up the triagle until it reaches the top, then solves from there. I was trying to start from the top and solve down, which is still something I'm not sure is possible. 


(define (pascal row column)
  (cond ((< row column) 0)
        ((or (= 0 column) (= row column)) 1)
        (else (+ (pascal (- 1 row) column)
                 (pascal (- 1 row) (- 1 column))))))
        

