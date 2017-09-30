;Exercise 1.2

;There are many ways to present this in prefix notation. I find the following ways immediately apparent. 

;normal prefix
 (/(+ 5	4 (- 2(- 3(+ 6(/ 4 5)))))(* 3(- 6 2)(- 2 7)))

;pretty print two levels deep
 (/(+ 	5 
		4
		(- 2(- 3(+ 6(/ 4 5)))))
	(* 	3
		(- 6 2)
		(- 2 7)
	 )
   )

;pretty print the whole way down
 (/(+ 	5 
		4
		(- 2
		   (- 3
			  (+ 6
				 (/ 4
					5)))))
	(* 	3
		(- 6 
		   2)
		(- 2 
		   7)
	 )
   )



