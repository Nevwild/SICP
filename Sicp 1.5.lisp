MIT/GNU Scheme running under OS X

Copyright (C) 2014 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Image saved on Saturday May 17, 2014 at 2:39:25 AM
  Release 9.2 || Microcode 15.3 || Runtime 15.7 || SF 4.41 || LIAR/x86-64 4.118
  Edwin 3.116

1 ]=> 

;Applicative order evaluation: evaluates the arguments then applies all procedures. 
;This means that (test 0 (p)) will evaluate 0, then it will evaluate (p), which will recursively call itself, and be stuck in an infinate loop.

;Normal order evaluation: arguments are  evaluated by the interperter only when they are needed. 
;This means that (p) is passed to test without being evaluated. Therefore the expression (= 0 0) evaluates to #t, and test returns 0 before it has a chance to call (p).  