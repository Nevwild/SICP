Exercise 1.11: A function f is defined by the rule that 

f(n) = n if n<3
and 
f(n) = f(n−1) + 2f(n−2) + 3f(n−3) if n ≥ 3
;Write a procedure that computes f by means of a recursive process. Write a procedure that computes f by means of an iterative process.
(+ (f (- n 1)) 
   (* 2 (f (- n 2)))
   (* 3 (f (- n 3))))                                                
;first pass at recursive
(define (f n)
  (if (>= n 3)
      (+ (f (- n 1)) 
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3)))) 
    n 
    )
  )

;recursive if #2

(define (f n)
  (if (< n 3)
      n
    (+ (f (- n 1))
       (* 2 (f (- n 2)))
       (* 3 (f (- n 3))))))

;recursive as cond

(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1)) 
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))

;Subsitution
(f 5)
(cond ((< 5 3) 5);#f
      (else (+ (f (- 5 1)) 
               (* 2 (f (- 5 2)))
               (* 3 (f (- 5 3))))))

              (+ (f 4)
                 (* 2(f 3))
                 (* 3(f 2)))  

              (+ (+ (cond ((< 4 3) 4);#f
                          (else (+ (f (- 4 1)) 
                                   (* 2 (f (- 4 2)))
                                   (* 3 (f (- 4 3)))))))
                 ((cond ((< n 3) n)
        (else (+ (f (- n 1)) 
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))
                 ((cond ((< n 3) n))

              (+ (+ (cond ((< 4 3) 4);#f
                          (else (+ (f (3)) 
                                   (* 2 (f (2)))
                                   (* 3 (f (1)))))))
                 (6)
                 (6))

              (+ (+ (cond ((< 4 3) 4);#f
                          (else (+ 4 
                                   (4)
                                   (3)))))
                 (6)
                 (6))

              (+ 11
                 6
                 6)

              25

(f 3)
(cond ((< 3 3) 3)
      (else (+ (f (- 3 1)) 
               (* 2 (f (- 3 2)))
               (* 3 (f (- 3 3))))))
        
        (else (+ (f (2)) 
                 (* 2 (f (1)))
                 (* 3 (f (0)))))

        (else (+ (2) 
                 (* 2 (1))
                 (* 3 (0))))

        (else (+ (2) 
                 (2)
                 (0)))

        4

    

;iterative


(define (f n)
  
