(setq *print-case* :capitalize)

;;; Symbols are compared with eq
 
(defparameter *name* 'Derek)
(format t "(eq *name* 'Derek) = ~d ~%" (eq *name* 'Derek))
 
;;; Everything else is compared with equal for the most part
 
(format t "(equal 'car 'truck) = ~d ~%" (equal 'car 'truck))
(format t "(equal 10 10) = ~d ~%" (equal 10 10))
(format t "(equal 5.5 5.3) = ~d ~%" (equal 5.5 5.3))
(format t "(equal \"string\" \"String\") = ~d ~%" (equal "string" "String"))
(format t "(equal (list 1 2 3) (list 1 2 3)) = ~d ~%" 
    (equal (list 1 2 3) (list 1 2 3)))
    
;;; equalp can compare strings of any case and integers to floats
(format t "(equalp 1.0 1) = ~d ~%" (equalp 1.0 1))
(format t "(equalp \"Derek\" \"derek\") = ~d ~%" (equalp "Derek" "derek"))