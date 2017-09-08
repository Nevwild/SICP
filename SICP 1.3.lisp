;Exercise 1.3



(define (square x) (* x x))

(define (sum-of-squares x y)
 	(+ (square x) (square y)))

(define (min x y)
 	(if  (< x y)
		x
		y))

(define (sum-of-largest-squares x y z)
		(if (= x(min x(min y z)))
			(sum-of-squares y z)
			(sum-of-largest-squares y z x)))



; MARK: Tests as run in Edwin

1 ]=> (sum-of-largest-squares 2 3 1)

;Value: 13

1 ]=> (sum-of-largest-squares 3 1 2)

;Value: 13

(sum-of-largest-squares 1 2 3)

;Value: 13
