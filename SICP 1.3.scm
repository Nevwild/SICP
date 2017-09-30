;Exercise 1.3: Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.

;defining required functions

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (min x y) 
  (if  (< x y)
    x
    y))

;Solution 1: I really like this solution. Recursion has not been formally introduced at this point beyond a mere mention, but it feels so clean and good to use it in this solution. 

(define (sum-of-largest-squares x y z)
  (if (= x(min x(min y z))) ;I dont like this line. I would prefer to have this line be (if (= x(min x y z). How do I define a function that takes an undetermined number of paramaters? Is this what lists are for? Perhaps a lambda call in the min function?  
    (sum-of-squares y z)
    (sum-of-largest-squares y z x)))

;Solution 1 tests as run in Edwin

1 ]=> (sum-of-largest-squares 2 3 1)

;Value: 13

1 ]=> (sum-of-largest-squares 3 1 2)

;Value: 13

1 ]=> (sum-of-largest-squares 1 2 3)

;Value: 13

;Solution 2
;New function definitions

(define (max x y)
  (if (> x y)
      x
    y))
	

(define (sum-of-largest-squares x y z)
  (if (= x(max x y) 
         (sum-of-squares x (max y z))
         (sum-of-squares y (max x z)))))

;Solution 2 tests as run in Edwin

1 => (sum-of-largest-squares 1 2 3)

;Value: 13

1 => (sum-of-largest-squares 3 1 2 )

;Value: 13

1 => (sum-of-largest-squares 2 3 1)

;Value: 13
