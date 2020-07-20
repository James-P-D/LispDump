(setq *print-case* :capitalize)

(format t "~a~%" (+ 5 4))     ; Remember operators are prefix not infix

(format t "~a~%" (+ 5 (- 6 2)))

(defvar *number* 6)        ; We can define variables with 'defvar'
(format t "~a~%" *number*)
(setf *number* 20)         ; ...and we can change values with 'setf'
(format t "~a~%" *number*)

