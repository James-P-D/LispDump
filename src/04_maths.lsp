(setq *print-case* :capitalize)

(format t "(+ 5 4) = ~d~%" (+ 5 4))
(format t "(- 5 4) = ~d~%" (- 5 4))
(format t "(* 5 4) = ~d~%" (* 5 4))
(format t "(/ 5 4) = ~d~%" (/ 5 4))     ; returns 5/4
(format t "(/ 5 4.0) = ~d~%" (/ 5 4.0)) ; returns 1.25
(format t "(rem 5 4) = ~d~%" (rem 5 4))
(format t "(mod 5 4) = ~d~%" (mod 5 4))

(format t "(expt 4 2) = ~d ~%" (expt 4 2))          ; = Exponent 4^2
(format t "(sqrt 81) = ~d ~%" (sqrt 81))            ; = 9
(format t "(exp 1) = ~d ~%" (exp 1))                ; = e^1
(format t "(log 1000 10) = ~d ~%" (log 1000 10))    ; = 3 = Because 10^3 = 1000
(format t "(eq 'dog 'dog) = ~d ~%" (eq 'dog 'dog))  ; = T Check Equality
(format t "(floor 5.5) = ~d ~%" (floor 5.5))        ; = 5
(format t "(ceiling 5.5) = ~d ~%" (ceiling 5.5))    ; = 6
(format t "(max 5 10) = ~d ~%" (max 5 10))          ; = 10
(format t "(min 5 10) = ~d ~%" (min 5 10))          ; = 5
(format t "(oddp 15) = ~d ~%" (oddp 15))            ; = T Check if 15 is odd 
(format t "(evenp 15) = ~d ~%" (evenp 15))          ; = NIL = FALSE Check if 15 is even 
(format t "(numberp 2) = ~d ~%" (numberp 2))        ; = T Is 2 a number
(format t "(null nil) = ~d ~%" (null nil))          ; = T Is something equal to nil

