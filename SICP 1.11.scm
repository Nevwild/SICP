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

;;;;;;;;;;;;;;;;
            
(cond ((< 5 3) 5);#f           
      (else (+ (f 4)
               (* 2(f 3))
               (* 3(f 2)))))  

;;;;;;;;;;;;;;;;

(cond ((< 5 3) 5);#f 
      (else (+ (cond ((< 4 3) 4);#f
                     (else (+ (f (- 4 1)) 
                              (* 2 (f (- 4 2)))
                              (* 3 (f (- 4 3))))))
               (* 2 (cond ((< 3 3) n);#f
                          (else (+ (f (- 3 1)) 
                                   (* 2 (f (- 3 2)))
                                   (* 3 (f (- 3 3)))))))
               (* 3 (cond ((< 2 3) 2))))));#t
         
;;;;;;;;;;;;;;;;
            
(cond ((< 5 3) 5);#f 
      (else (+ (cond ((< 4 3) 4);#f      
                     (else (+ (f (3)) 
                              (* 2 (f (2)))
                              (* 3 (f (1))))))
               (* 2 (cond ((< 3 3) 3);#f
                          (else (+ (f 2) 
                                   (* 2 (f (1)))
                                   (* 3 (f (0)))))))
               (* 3 (2)))))

;;;;;;;;;;;;;;;;
                             
(cond ((< 5 3) 5);#f 
      (else (+ (cond ((< 4 3) 4);#f                               
                     (else (+ (cond ((< 3 3) 3);#f
                                    (else (+ (f 2) 
                                             (* 2 (f (1)))
                                             (* 3 (f (0))))))
                              (* 2 (f (2)))
                              (* 3 (f (1))))))
               (* 2 (cond ((< 3 3) 3);#f
                          (else (+ (f 2) 
                                   (* 2 (f (1)))
                                   (* 3 (f (0)))))))
               (* 3 (2)))))

;;;;;;;;;;;;;;;
            
(cond ((< 5 3) 5);#f 
      (else (+ (cond ((< 4 3) 4);#f                               
                     (else (+ (cond ((< 3 3) 3);#f
                                    (else (+ (2) 
                                             (2))
                                          (0))))
                           (4)
                           (3)))
               (* 2 (cond ((< 3 3) 3);#f
                          (else (+ (2) 
                                   (2)
                                   (0)))))
               (* 3 (2)))))

;;;;;;;;;;;;;;;
            
(cond ((< 5 3) 5);#f 
      (else (+ (cond ((< 4 3) 4);#f                               
                     (else (+ (4)
                              (4))
                           (3)))
               (* 2 (4))
               (* 3 (2)))))
                                   
;;;;;;;;;;;;;;;
            
(cond ((< 5 3) 5);#f 
      (else (+ (11)
               (* 2 (4))
               (* 3 (2)))))
      
;;;;;;;;;;;;;;;
            
(cond ((< 5 3) 5);#f 
      (else (+ (11)
               (8)
               (6)))) 
      
;;;;;;;;;;;;;;;
            
(cond ((< 5 3) 5);#f 
      (else (25))) 

;;;;;;;;;;;;;;;
            
 25 
      
        
                 


(f 3)
(cond ((< 3 3) 3)
      (else (+ (f (- 3 1)) 
               (* 2 (f (- 3 2)))
               (* 3 (f (- 3 3))))))

;;;;;;;;;;;;;;;
         
        (else (+ (f (2)) 
                 (* 2 (f (1)))
                 (* 3 (f (0)))))

;;;;;;;;;;;;;;;
 
        (else (+ (2) 
                 (* 2 (1))
                 (* 3 (0))))

;;;;;;;;;;;;;;;
 
        (else (+ (2) 
                 (2)
                 (0)))

;;;;;;;;;;;;;;;
 
        4

;iterative    
;Definition of f from the book. 

f(n) = n if n<3
and 
f(n) = f(n−1) + 2f(n−2) + 3f(n−3) if n ≥ 3


;my answer, as I'm working on it. 

(define (f x)
  (f-ier 1 ))

(define (f-ier n x)
  (cond (< n 3) n
        (= n 0) n;I dont like this
        (else 
    
         
         n-1 n-2 n-3
  
         )))
  
  
;f-ier substitution

(f 5)
(f-ier (1 5 0) 
       (cond (< 5 3) 5;#f
             (= 5 0) 5;#f
             (else (f-ier (+ 1 0 0) (+ 0 1)))))     
             
               

;What if you hold the answers of (f(- n 1) 2f(- n 2) 3f(- n 3))))
;you dont need to. you only need to hold the previous -2 and -3 because the previous answer is n... right?
                                                             


(define (f-ier n fn-1-result fn-2-result fn-3-result running-total goal)
  (cond (= goal n) running-total
        ((< n 3) 
         (f-ier (+ n  1) 
                n 
                fn-1-result 
                fn-2-result 
                (+ running-total n) 
                goal))
        (else (f-ier (+ n 1) 
                     (+ fn-1-result 
                        (* 2 fn-2-result) 
                        (* 3 fn-3-result)) 
                     fn-1-result 
                     fn-2-result 
                     (+ running-total 
                        (+ fn-1-result 
                           (* 2 fn-2-result) 
                           (* 3 fn-3-result))) 
                     goal)))
  
  ;Substitution
  (f-ier 2 1 0 0 1 6)
  (cond = 6 2) 1 ;#f
  ((< 2 3) ;#t
   (f-ier (+ 2 1)
          )  














   ;The following section is the work for the procedure above. It consists of substitution of both tree recursive and linear iterative Fibonacci number computation. I am doing this because I am having a hard time figuring out the iterative procedure for f 
  
   ;Fib procedure substitution method - recursive
  
   (define (fib n)
     (cond ((= n 0) 0)
           ((= n 1) 1)
           (else (+ (fib (- n 1))
                    (fib (- n 2))))))

   (fib 5)

   (cond ((= 5 0) 0)
         ((= 5 1) 1)
         (else (+ (fib (- 5 1))
                  (fib (- 5 2)))))

   ;;;;;;;;;;;;;;;;;;reduction

   (cond ((= 5 0) 0)
         ((= 5 1) 1)
         (else (+ (fib (4))
                  (fib (3)))))
  
   ;;;;;;;;;;;;;;;;;;expansion

   (cond ((= 5 0) 0)
         ((= 5 1) 1)
         (else (+ (fib 4 
                       ((cond ((= 4 0) 0)
                              ((= 4 1) 1)
                              (else (+ (fib (- 4 1))
                                       (fib (- 4 2)))))))
                  (fib 3
                       ((cond ((= n 0) 0)
                              ((= n 1) 1)
                              (else (+ (fib (- 3 1))
                                       (fib (- 3 2))))))))))
    
   ;;;;;;;;;;;;;;;;;;reduction

   (cond ((= 5 0) 0)
         ((= 5 1) 1)
         (else (+ (fib 4
                       (cond ((= 4 0) 0)
                             ((= 4 1) 1)
                             (else (+ (fib (3))
                                      (fib (2)))))))
               (fib 3
                    (cond ((= n 0) 0)
                          ((= n 1) 1)
                          (else (+ (fib (2))
                                   (fib (1))))))))
    
   ;;;;;;;;;;;;;;;;;;expansion

   (cond ((= 5 0) 0)
         ((= 5 1) 1)
         (else (+ (fib 4
                       (cond ((= 4 0) 0)
                             ((= 4 1) 1)
                             (else (+ (fib 3
                                           (cond ((= 3 0) 0)
                                                 ((= 3 1) 1)
                                                 (else (+ (fib (- 3 1))
                                                          (fib (- 3 2))))))
                                      (fib 2
                                           (cond ((= 2 0) 0)
                                                 ((= 2 1) 1)
                                                 (else (+ (fib (- 2 1))
                                                          (fib (- 2 2))))))))))
                  (fib 3
                       (cond ((= n 0) 0)
                             ((= n 1) 1)
                             (else (+ (fib 2
                                           (cond ((= 2 0) 0)
                                                 ((= 2 1) 1)
                                                 (else (+ (fib (- 2 1))
                                                          (fib (- 2 2))))))
                                      (fib 1
                                           (cond ((= 1 0) 0)
                                                 ((= 1 1) 1)
                                                 (else (+ (fib (- 1 1))
                                                          (fib (- 1 2)))))))))))))
    
   ;;;;;;;;;;;;;;;;;;reduction

   (cond ((= 5 0) 0)
         ((= 5 1) 1)
         (else (+ (fib 4
                       (cond ((= 4 0) 0)
                             ((= 4 1) 1)
                             (else (+ (fib 3
                                           (cond ((= 3 0) 0)
                                                 ((= 3 1) 1)
                                                 (else (+ (fib (2))
                                                          (fib (1)))))))
                                   (fib 2
                                        (cond ((= 2 0) 0)
                                              ((= 2 1) 1)
                                              (else (+ (fib (1))
                                                       (fib (0))))))))))
               (fib 3
                    (cond ((= n 0) 0)
                          ((= n 1) 1)
                          (else (+ (fib 2
                                        (cond ((= 2 0) 0)
                                              ((= 2 1) 1)
                                              (else (+ (fib (1))
                                                       (fib (0))))))
                                   (fib 1
                                        (cond ((= 1 0) 0)
                                              ((= 1 1) 1);#t
                                              (else (+ (fib (0))
                                                       (fib (-1))))))))))))
  
   ;;;;;;;;;;;;;;;;;;expansion

   (cond ((= 5 0) 0)
         ((= 5 1) 1)
         (else (+ (fib 4
                       (cond ((= 4 0) 0)
                             ((= 4 1) 1)
                             (else (+ (fib 3
                                           (cond ((= 3 0) 0)
                                                 ((= 3 1) 1)
                                                 (else (+ (fib 2
                                                               (cond ((= 2 0) 0)
                                                                     ((= 2 1) 1)
                                                                     (else (+ (fib 1
                                                                                   (cond ((= 1 0) 0)
                                                                                         ((= 1 1) 1);#t
                                                                                         (else (+ (fib (0))
                                                                                                  (fib (-1))))))
                                                                              (fib 0
                                                                                   (cond ((= 0 0) 0);#t
                                                                                         ((= n 1) 1)
                                                                                         (else (+ (fib (- 0 1))
                                                                                                  (fib (- 0 2)))))))))
                                                               (fib 1
                                                                    (cond ((= 1 0) 0)
                                                                          ((= 1 1) 1);#t
                                                                          (else (+ (fib (0))
                                                                                   (fib (-1)))))))))))
                                      (fib 2
                                           (cond ((= 2 0) 0)
                                                 ((= 2 1) 1)
                                                 (else (+ (fib 1
                                                               (cond ((= 1 0) 0)
                                                                     ((= 1 1) 1);#t
                                                                     (else (+ (fib (0))
                                                                              (fib (-1))))))
                                                          (fib 0
                                                               (cond ((= 0 0) 0);#t
                                                                     ((= n 1) 1)
                                                                     (else (+ (fib (- 0 1))
                                                                              (fib (- 0 2))))))))))))))
                  (fib 3
                       (cond ((= 3 0) 0)
                             ((= 3 1) 1)
                             (else (+ (fib 2
                                           (cond ((= 2 0) 0)
                                                 ((= 2 1) 1)
                                                 (else (+ (fib 1
                                                               (cond ((= 1 0) 0)
                                                                     ((= 1 1) 1);#t
                                                                     (else (+ (fib (0))
                                                                              (fib (-1))))))
                                                          (fib 0
                                                               (cond ((= 0 0) 0);#t
                                                                     ((= n 1) 1)
                                                                     (else (+ (fib (- 0 1))
                                                                              (fib (- 0 2)))))))))
                                           (fib 1
                                                (cond ((= 1 0) 0)
                                                      ((= 1 1) 1);#t
                                                      (else (+ (fib (0))
                                                               (fib (-1))))))))))))))
  
   ;;;;;;;;;;;;;;;;;;reduction

   (cond ((= 5 0) 0)
         ((= 5 1) 1)
         (else (+ (fib 4
                       (cond ((= 4 0) 0)
                             ((= 4 1) 1)
                             (else (+ (fib 3
                                           (cond ((= 3 0) 0)
                                                 ((= 3 1) 1)
                                                 (else (+ (fib 2
                                                               (cond ((= 2 0) 0)
                                                                     ((= 2 1) 1)
                                                                     (else (+ (1)
                                                                              (0)))))
                                                          (1)))))
                                      (fib 2
                                           (cond ((= 2 0) 0)
                                                 ((= 2 1) 1)
                                                 (else (+ (1)
                                                          (0)))))))))
                  (fib 3
                       (cond ((= 3 0) 0)
                             ((= 3 1) 1)
                             (else (+ (fib 2
                                           (cond ((= 2 0) 0)
                                                 ((= 2 1) 1)
                                                 (else (+ (1)
                                                          (0)))))
                                      (1))))))))

   ;;;;;;;;;;;;;;;;;;reduction

   (cond ((= 5 0) 0)
         ((= 5 1) 1)
         (else (+ (fib 4
                       (cond ((= 4 0) 0)
                             ((= 4 1) 1)
                             (else (+ (fib 3
                                           (cond ((= 3 0) 0)
                                                 ((= 3 1) 1)
                                                 (else (+ (1)
                                                          (1)))))
                                      (1)))))
                  (fib 3
                       (cond ((= 3 0) 0)
                             ((= 3 1) 1)
                             (else (+ (1)
                                      (1))))))))

   ;;;;;;;;;;;;;;;;;;reduction

   (cond ((= 5 0) 0)
         ((= 5 1) 1)
         (else (+ (fib 4
                       (cond ((= 4 0) 0)
                             ((= 4 1) 1)
                             (else (+ (2)
                                      (1)))))
                  (2))))


   ;;;;;;;;;;;;;;;;;;reduction

   (cond ((= 5 0) 0)
         ((= 5 1) 1)
         (else (+ (3)
                  (2))))

   ;;;;;;;;;;;;;;;;;;Answer

   5
  
  
   ;Fib procedure substitution method - iterative
  
   (define (fib n) 
     (fib-iter 1 0 n))

   (define (fib-iter a b count)
     (if (= count 0)
         b
       (fib-iter (+ a b) a (- count 1))))

   (fib 5)
   (fib-iter 1 0 5
             (if (= count 0)
                 0
               (fib-iter (+ 1 0) 1 (- 5 1))))

   (fib-iter 1 1 4
             (if (= 4 0)
                 1
               (fib-iter (+ 1 1) 1 (- 4 1))))

   (fib-iter 2 1 3
             (if (= 3 0)
                 1
               (fib-iter (+ 2 1) 2 (- 3 1))))

   (fib-iter 3 2 2
             (if (= 2 0)
                 2
               (fib-iter (+ 3 2) 3 (- 2 1))))

   (fib-iter 5 3 1
             (if (= 1 0)
                 3
               (fib-iter (+ 5 3) 5 (- 1 1))))

   (fib-iter 8 5 0
             (if (= 0 0);#t
                 5
               (fib-iter (+ 8 5) 8 (- 0 1))))

   5







    
 
  
  
  
  
  
    
