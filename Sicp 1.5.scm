;“Exercise 1.5: Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using applicative-order evaluation or normal-order evaluation. He defines the following two procedures:”

(define (p) (p))

(define (test x y) 
  (if (= x 0) 
    0 
    y))

;Then he evaluates the expression

(test 0 (p))

;What behavior will Ben observe with an interpreter that uses applicative-order evaluation? What behavior will he observe with an interpreter that uses normal-order evaluation? Explain your answer. (Assume that the evaluation rule for the special form if is the same whether the interpreter is using normal or applicative order: The predicate expression is evaluated first, and the result determines whether to evaluate the consequent or the alternative expression.)”

;Solutions: 

;Case: Applicative Order Evaluation
;Applicative order evaluation: evaluates the arguments then applies all procedures. 
(test 0 (p))

;Evaluates 0 -> 0
;Evaluates (p) -> (p) -> (p) -> (p) -> (p) -> ∞
;This means that (test 0 (p)) will evaluate 0, which produces a value of 0. 
;Then it will evaluate (p), which will be recursively called, and be stuck in an infinite loop 

;Case: Normal Order Evaluation
;Normal order evaluation: arguments are  evaluated by the interperter only when they are needed. "expand then reduce"
(test 0 (p))

;The expression (= 0 0) evaluates to #t, and test returns 0 before it has a chance to call (p).
(if (= 0 0);-> #t 
    0;-> Evaluated and returned
  (p);-> Never evaluated. 

  