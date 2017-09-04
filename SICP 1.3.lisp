MIT/GNU Scheme running under OS X

Copyright (C) 2014 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Image saved on Saturday May 17, 2014 at 2:39:25 AM
  Release 9.2 || Microcode 15.3 || Runtime 15.7 || SF 4.41 || LIAR/x86-64 4.118
  Edwin 3.116

1 ]=> (define (square x) (* x x))

;Value: square

1 ]=> (define (sum-of-squares x y)
  		(+ (square x) (square y)))

;Value: sum-of-squares

1 ]=> (define (min x y)
 		(if  (< x y)
			x
			y))

;Value: min

1 ]=> (define (sum-of-largest-squares x y z)
			(if (= x(min x(min y z)))
				(sum-of-squares y z)
				(sum-of-largest-squares y z x)))

;Value: sum-of-largest-squares

1 ]=> (sum-of-largest-squares 2 3 1)

;Value: 13

1 ]=> (sum-of-largest-squares 3 1 2)

;Value: 13

1 ]=> (sum-of-largest-squares 1 2 3)

;Value: 13

1 ]=> 