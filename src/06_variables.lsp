; Use 'let' to create some local variables
(let ((var-1 5) 
      (var-2 10)) 
      (print var-1)
      (print var-2)
      (print (+ var-1 var-2))
      (terpri)) ; Prints a newline
     
; Local variables are only known within the scope of the 'let'
;(print var-1) ; This line will produce an error because 'var-1' no longer exists
