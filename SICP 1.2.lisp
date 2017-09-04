MIT/GNU Scheme running under OS X

Copyright (C) 2014 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Image saved on Saturday May 17, 2014 at 2:39:25 AM
  Release 9.2 || Microcode 15.3 || Runtime 15.7 || SF 4.41 || LIAR/x86-64 4.118
  Edwin 3.116

1 ]=> (/(+ 5 4))

;Value: 1/9

1 ]=> (/(+ 
			5 
			4
			(- 2(- 3(+ 6(/ 4 5)))))
		
)

;Value: 5/74

1 ]=> (/(+ 
			5 
			4
			(- 2(- 3(+ 6(/ 4 5)))))
		(* 
			3
			(- 6 2)
			(- 2 7))
	)

;Value: -37/150

1 ]=> 