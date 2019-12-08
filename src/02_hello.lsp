(format t "Hello, world!~%Goodbye!") ; ~% for new line


(print "what's your name? ")

(defvar *global_var* (read)) ; Global variables usually surrounded by '*'

(defun hello-you (global_var)
    (format t "hello ~a!~%" global_var))
    
; We can specify whether variables should be outputted in uppercase, lowercase, etc.    
;(setq *print-case* :capitalize)
(setq *print-case* :upcase)
;(setq *print-case* :downcase)

(hello-you *global_var*)

(format t "show the value: ~a! ~%" *global_var*)
(format t "show the value with quotes: ~s! ~%" *global_var*)
(format t "show the value (rightpad): ~10a! ~%" *global_var*)
(format t "show the value (leftpad): ~10@a! ~%" *global_var*)
 
(format t "Number with commas ~:d ~%" 1000000)
(format t "Pi to 5 characters ~5f ~%" 3.141593)
(format t "Pi to 4 d.p. ~,4f ~%" 3.141593)
(format t "10 percent ~,,2f ~%" .10)
(format t "10 dollars ~$ ~%" 12.34)

(print "hello again")
(terpri)                ; new line
(print "and goodbyte")