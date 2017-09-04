MIT/GNU Scheme running under OS X

Copyright (C) 2014 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Image saved on Saturday May 17, 2014 at 2:39:25 AM
  Release 9.2 || Microcode 15.3 || Runtime 15.7 || SF 4.41 || LIAR/x86-64 4.118
  Edwin 3.116

1 ]=> 10

;Value: 10

1 ]=> (+ 5 3 4)

;Value: 12

1 ]=> (- 9 1)

;Value: 8

1 ]=> (/ 6 2 )

;Value: 3

1 ]=> (+(*2 4)(-4 6))

;The object -4 is not applicable.
;To continue, call RESTART with an option number:
; (RESTART 2) => Specify a procedure to use in its place.
; (RESTART 1) => Return to read-eval-print level 1.

2 error> (+(* 2 4)(- 4 6))

;Value: 6

2 error> (RESTART 2)


New procedure: (+(* 2 4)(- 4 6))

;The object 6 is not applicable.
;To continue, call RESTART with an option number:
; (RESTART 2) => Specify a procedure to use in its place.
; (RESTART 1) => Return to read-eval-print level 1.

2 error> (RESTART 2)


New procedure: (+ (* 2 4) (- 4 6))

;The object 6 is not applicable.
;To continue, call RESTART with an option number:
; (RESTART 2) => Specify a procedure to use in its place.
; (RESTART 1) => Return to read-eval-print level 1.

2 error> (RESTART 2)


New procedure: (+ (* 2 4) (- 4 6))

;The object 6 is not applicable.
;To continue, call RESTART with an option number:
; (RESTART 2) => Specify a procedure to use in its place.
; (RESTART 1) => Return to read-eval-print level 1.

2 error> (RESTART 1)

;Abort!

1 ]=> (+ (* 2 4) (- 4 6))

;Value: 6

1 ]=> (define a 3)

;Value: a

1 ]=> (define b (+ a 1))

;Value: b

1 ]=> (+ a b (* a b))

;Value: 19

1 ]=> (= a b)

;Value: #f

1 ]=> (if(and (> b a)(< b(* a b))))

;Ill-formed special form: (if (and ... ...))
;To continue, call RESTART with an option number:
; (RESTART 1) => Return to read-eval-print level 1.

2 error> (RESTART 1)

;Abort!

1 ]=> (if(and (> b a)(< b (* a b)))
b
)

;Value: 4

1 ]=> (if(and (> b a)(< b (* a b)))
b
a
)

;Value: 4

1 ]=> (if(and (> b a)(< b (* a b)))
b
a)

;Value: 4

1 ]=> (if
		(and 
			(> b a)
			(< b (* a b)))
b
a
)

;Value: 4

1 ]=> (if
		(and 
			(> b a)
			(< b (* a b)))
b
a
)

;Value: 4

1 ]=> (cond ((= a 4) 6)
      ((= b 4)(+ 6 7 a))
		(else 25))

;Value: 16

1 ]=> (+ 2 (if(> b a) b a))

;Value: 6

1 ]=> (*((cond ((> a b) a)
      ((< a b) b)
		(else -1))))

;The object 4 is not applicable.
;To continue, call RESTART with an option number:
; (RESTART 2) => Specify a procedure to use in its place.
; (RESTART 1) => Return to read-eval-print level 1.

2 error> (RESTART 1)

;Abort!

1 ]=> (*(cond ((> a b) a)
      ((< a b) b)
		(else -1))
		(+ a 1))

;Value: 16

1 ]=> (+ (+ 5 4)
		(- 2 ()))

;The object (), passed as the second argument to integer-subtract, is not the correct type.
;To continue, call RESTART with an option number:
; (RESTART 2) => Specify an argument to use in its place.
; (RESTART 1) => Return to read-eval-print level 1.

2 error> (RESTART 1)

;Abort!

1 ]=> (/ (+ (+ 5 4)
			(- 2 (- 3
				(+ 6 (/ 4 5))))
		(* 3
			(* 
				(- 6 2))	
)
	









(/ (+ (+ 5 4)
			(- 2 (- 3
				(+ 6 (/ 4 5))))
		(* 3
			(* 
				(- 6 2)
				(- 2 7))))
(/ (+ (+ 5 4)
			(- 2 (- 3
				(+ 6 (/ 4 5))))
		(* 3
			(* 
				(- 6 2)
				(- 2 7)))))


(RESTART 1)

