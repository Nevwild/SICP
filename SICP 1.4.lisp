;“Exercise 1.4: Observe that our model of evaluation allows for combinations whose operators are compound expressions. Use this observation to describe the behavior of the following procedure:”

“(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))”

;Using the substitution model, the procedure will act as follows

;Case: b = 5

(a-plus-abs-b 1 5)
     ((if (> 5 0) + -) 1 5))

;b is greater than 0, leading the if statement to evaluate as #t, which means the + operator will be applied to (a b). 

(+ 1 5) ;a is added to the absolute value of b

6

;Case: b = -5

(a-plus-abs-b 1 -5)
     ((if (> -5 0) + -) 1 -5))
;b is less than 0, leading the if statement to evaluate as #f, which means the + operator will be applied to (a b).

;If b is not greater than zero, it will be subtracted from a. This cancels out the negative value of b, resulting in the addition of the absolute value of b to a. 

(- 1 -5) ;for someone used to normal notation, this seems as if it could evaluated  as -1 -5 which would evaluate to -6 or -4 if it was read as -1 - -5. However, using prefix notation, it will be run through the interpreter as 1 - -5. This means that you can always add the aboslute value of an argument, but I think that this may not work for more complex mathimatical operations ie: multiplication or division

6