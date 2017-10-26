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

;recursive as cond

(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1)) 
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))

;Subsitution!
(f 5)
(cond ((< 5 3) 5)
      (else (+ (f (- 5 1)) 
               (* 2 (f (- 5 2)))
               (* 3 (f (- 5 3))))))

              (+ (f 4)
                 (* 2(3))
                 (* 3(2))) 	

              (+ (+ (cond ((< 4 3) 4)
                          (else (+ (f (- 4 1)) 
                                   (* 2 (f (- 4 2)))
                                   (* 3 (f (- 4 3)))))))
                 (6)
                 (6))

              (+ (+ (cond ((< 4 3) 4);#f
                          (else (+ (f (3)) 
                                   (* 2 (f (2)))
                                   (* 3 (f (1)))))))
                 (6)
                 (6))

              (+ (+ (cond ((< 4 3) 4);#f
                          (else (+ 3 
                                   (4)
                                   (3)))))
                 (6)
                 (6))

              (+ 10
                 6
                 6)
              22


;iterative


(define (f n)
  
