(setq *print-case* :capitalize)

(loop for x from 1 to 10
    do (format t "~d " x))
    
(print "-------------------")
(terpri)
    
(setq x 1)

(loop 
    (format t "~d " x)
    (setq x (+ x 1))
    (when (> x 10) (return x)))

(print "-------------------")
(terpri)

(loop for x in '(foo bar moo) do
    (format t "~s ~%" x))
    
(print "-------------------")
(terpri)

(dotimes (y 12)
    (format t "~d " y))      ; prints 0 to 11
