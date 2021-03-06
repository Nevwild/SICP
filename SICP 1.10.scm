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
(g) ;2^n
(g) ;2^^n


;SOLUTION 1 WORK 


(A 1 10)
((A (- 1 1) (A 1 (- 10 1))))
((A 0 (A 1 9)))
((A 0 (A (- 1 1) (A 1 (- 9 1)))))
((A 0 (A 0 (A 1 8))))
((A 0 (A 0 (A (- 1 1) (A 1 (- 8 1))))))
((A 0 (A 0 (A 0 (A 1 7)))))
((A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 7 1)))))))
((A 0 (A 0 (A 0 (A 0 (A 1 6))))))
((A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 6 1))))))))
((A 0 (A 0 (A 0 (A 0 (A 0 (A 1 5)))))))
((A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 5 1)))))))))
((A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 4))))))))
((A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 4 1))))))))))
((A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 3)))))))))
((A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 3 1)))))))))))
((A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 2))))))))))
((A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 2 1))))))))))));If you count the A's on this line you will note that they are equal to the parameter y. This means that the space complexity of Ackermann’s function is O(y). If you look at the SICP Lecture 1b (https://youtu.be/dlbMuv-jix8?t=29m25s) he states that the space complexity of the function will be O(x). This raises a question, what determines space complexity? Is it a single parameter? If so, what determines which parameter?
((A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1)))))))))))
((A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2))))))))))
((A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 2))))))))))
((A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4)))))))))
((A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 4)))))))))
((A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8))))))))
((A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 8))))))))
((A 0 (A 0 (A 0 (A 0 (A 0 (A 0 16)))))))
((A 0 (A 0 (A 0 (A 0 (A 0 (* 2 16)))))))
((A 0 (A 0 (A 0 (A 0 (A 0 32))))))
((A 0 (A 0 (A 0 (A 0 (* 2 32))))))
((A 0 (A 0 (A 0 (A 0 64)))))
((A 0 (A 0 (A 0 (* 2 64)))))
((A 0 (A 0 (A 0 128))))
((A 0 (A 0 (* 2 128))))
((A 0 (A 0 256)))
((A 0 (* 2 256)))
((A 0 512))
((* 2 512))

1024

(A 2 4)
(A (- 2 1) (A 2 (- 4 1)))
(A 1 (A 2 3))
(A 1 (A (- 2 1) (A 2 (- 3 1))))
(A 1 (A 1 (A 2 2)))
(A 1 (A 1 (A (- 2 1) (A 2 (- 2 1)))))
(A 1 (A 1 (A 1 (A 2 1))))
(A 1 (A 1 (A 1 2)))
(A 1 (A 1 (A (- 1 1) (A 1 (- 2 1)))))
(A 1 (A 1 (A 0 (A 1 1))))
(A 1 (A 1 (A 0 2)))
(A 1 (A 1 (* 2 2)))
(A 1 (A 1 4))
(A 1 (A (- 1 1) (A 1 (- 4 1))))
(A 1 (A 0 (A 1 3)))
(A 1 (A 0 (A (- 1 1) (A 1 (- 3 1)))))
(A 1 (A 0 (A 0 (A 1 2))))
(A 1 (A 0 (A 0 (A (- 1 1) (A 1 (- 2 1))))))
(A 1 (A 0 (A 0 (A 0 (A 1 1)))))
(A 1 (A 0 (A 0 (A 0 2))))
(A 1 (A 0 (A 0 (* 2 2))))
(A 1 (A 0 (A 0 4)))
(A 1 (A 0 (* 2 4)))
(A 1 (A 0 8))
(A 1 (* 2 8))
(A 1 16)
(A (- 1 1) (A 1 (- 16 1)))
(A 0 (A 1 15))
(A 0 (A (- 1 1) (A 1 (- 15 1))))
(A 0 (A 0 (A 1 14)))
(A 0 (A 0 (A (- 1 1) (A 1 (- 14 1)))))
(A 0 (A 0 (A 0 (A 1 13))))
(A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 13 1))))))
(A 0 (A 0 (A 0 (A 0 (A 1 12)))))
(A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 12 1)))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 1 11))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 11 1))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 10)))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 10 1)))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 9))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 9 1))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 8)))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 8 1)))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 7))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 7 1))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 6)))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 6 1)))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 5))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 5 1))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 4)))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 4 1)))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 3))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 3 1))))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 2)))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 2 1)))))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1))))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2)))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 2)))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 4))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8)))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 8)))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 16))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 16))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 32)))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 32)))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 64))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 64))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 128)))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 128)))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 256))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 256))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 512)))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 512)))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 1024))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (* 2 1024))))))
(A 0 (A 0 (A 0 (A 0 (A 0 2048)))))
(A 0 (A 0 (A 0 (A 0 (* 2 2048)))))
(A 0 (A 0 (A 0 (A 0 4096))))
(A 0 (A 0 (A 0 (* 2 4096))))
(A 0 (A 0 (* 2 8192)))
(A 0 (A 0 16384))
(A 0 (* 2 16384))
(A 0 32768)
(* 2 32768)

65536


(A 3 3)
(A (- 3 1) (A 3 (- 3 1)))
(A 2 (A 3 2))
(A 2 (A (- 3 1) (A 3 (- 2 1))))
(A 2 (A 2 (A 3 1)))
(A 2 (A 2 2))
(A 2 (A (- 2 1) (A 2 (- 2 1))))
(A 2 (A 1 (A 2 1)))
(A 2 (A 1 2))
(A 2 (A (- 1 1) (A 1 (- 2 1))))
(A 2 (A 0 (A 1 1)))
(A 2 (A 0 2))
(A 2 (* 2 2))
(A 2 4)
(A (- 2 1) (A 2 (- 4 1)))
(A 1 (A 2 3))
(A 1 (A (- 2 1) (A 2 (- 3 1))))
(A 1 (A 1 (A 2 2)))
(A 1 (A 1 (A (- 2 1) (A 2 (- 2 1)))))
(A 1 (A 1 (A 1 (A 2 1))))
(A 1 (A 1 (A 1 2)))
(A 1 (A 1 (A (- 1 1) (A 1 (- 2 1)))))
(A 1 (A 1 (A 0 (A 1 1))))
(A 1 (A 1 (A 0 2)))
(A 1 (A 1 (* 2 2)))
(A 1 (A 1 4))
(A 1 (A (- 1 1) (A 1 (- 4 1))))
(A 1 (A 0 (A 1 3)))
(A 1 (A 0 (A (- 1 1) (A 1 (- 3 1)))))
(A 1 (A 0 (A 0 (A 1 2))))
(A 1 (A 0 (A 0 (A (- 1 1) (A 1 (- 2 1))))))
(A 1 (A 0 (A 0 (A 0 (A 1 1)))))
(A 1 (A 0 (A 0 (A 0 2))))
(A 1 (A 0 (A 0 (* 2 2))))
(A 1 (A 0 (A 0 4)))
(A 1 (A 0 (* 2 4)))
(A 1 (A 0 8))
(A 1 (* 2 8))
(A 1 16)
(A (- 1 1) (A 1 (- 16 1)))
(A 0 (A 1 15))
(A 0 (A (- 1 1) (A 1 (- 15 1))))
(A 0 (A 0 (A 1 14)))
(A 0 (A 0 (A (- 1 1) (A 1 (- 14 1)))))
(A 0 (A 0 (A 0 (A 1 13))))
(A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 13 1))))))
(A 0 (A 0 (A 0 (A 0 (A 1 12)))))
(A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 12 1)))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 1 11))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 11 1))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 10)))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 10 1)))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 9))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 9 1))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 8)))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 8 1)))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 7))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 7 1))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 6)))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 6 1)))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 5))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 5 1))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 4)))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 4 1)))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 3))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 3 1))))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 2)))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 2 1)))))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1))))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2)))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 2)))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 4))))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8)))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 8)))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 16))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 16))))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 32)))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 32)))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 64))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 64))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 128)))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 128)))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 256))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 256))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 512)))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 512)))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 1024))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (* 2 1024))))))
(A 0 (A 0 (A 0 (A 0 (A 0 2048)))))
(A 0 (A 0 (A 0 (A 0 (* 2 2048)))))
(A 0 (A 0 (A 0 (A 0 4096))))
(A 0 (A 0 (A 0 (* 2 4096))))
(A 0 (A 0 (* 2 8192)))
(A 0 (A 0 16384))
(A 0 (* 2 16384))
(A 0 32768)
(* 2 32768)

65536
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
;expands to else
    (A (- 1 1)
       (A 1 (- 3 1)))
;simplifies to
        (A 0 (A 1 2))
;expands to the else
        (A 0 (A   (- 1 1)
                  (A 1 (- 2 1))))
;simplifies to 
        (A 0 (A 0 (A 1 1)))
;simplifies to 
        (A 0 (A 0 2))
;Simplifies to
        (A 0 4)
;Returns
        8
;2 to the 3rd power is 8, and 2 to the 5th power is 32. so 2^n is the answer

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

(h 3)
expands to
(A 2 3)
;expands to else
    (A (- 2 1)
       (A 2 (- 3 1)))
;simplifies to
    (A 1 (A 1 2))
;simplifies
    (A 1 (A (- 1 1))
       (A 1 (- 2 1)))
;simplifies
    (A 1 (A 0 (A 1 1)))
;reduces
    (A 1 (A 0 2))
;reduces
    (A 1 4)
;expands
    (A (- 1 1)
       (A 1 (- 4 1)))
;simplifies
    (A 0 (A 1 3))
;expands
    (A 0 (A (- 1 1)
            (A 1 (- 3 1))))
;simplifies
    (A 0 (A 0 (A 1 2)))
;expands
    (A 0 (A 0 (A (- 1 1)
                 (A 1 (- 2 1)))))
;simplifies
    (A 0 (A 0 (A 0 (A 1 1))))
;reduces
    (A 0 (A 0 (A 0 2)))
reduces
    (A 0 (A 0 4))
reduces
    (A 0 8)
reduces
    16

;So this is 2 raised to 2 n number of times. This process is called tetration. notation is 2^^n
                                  
(define (k n) (* 5 n n))




