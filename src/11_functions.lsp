(setq *print-case* :capitalize)

(defun hello()      ; Need to have () even though there are no parameters
    (print "hello")
    (terpri))
    
(hello)

(print "-----------------------")
(terpri)

(defun get-mean(x y)
    (/ (+ x y) 2))
    
(format t "get-mean(5, 10) = ~a ~%" (get-mean 5 10))

(print "-----------------------")
(terpri)

; paramters a b c need to be there, x y z are optional
(defun print-list (a b c &optional x y z)
	(format t "List = ~a ~%" (list a b c x y z))
)

 
;(print-list 1)             ; invalid
(print-list 1 2 3)          ; valid
(print-list 1 2 3 4 5 6)    ; valid
(print-list 1 2 3 4)        ; valid
;(print-list 1 2 3 4 5 6 7) ; invalid

(print "-----------------------")
(terpri)

; We can pass a variable number of parameters with &rest
(defvar *total* 0)
(defun sum (&rest numbers)
    (dolist (number numbers)
        (setf *total* (+ *total* number)))
    (format t "total = ~a ~%" *total*))

(sum 1 2 3 4)

(print "-----------------------")
(terpri)

; We can specify parameters by name, so order of parameters doesn't matter
(defun using-key (&key a b)
    (format t "a = ~a b = ~a ~%" a b))
(using-key :a 1 :b 2)  ; These produce the same output
(using-key :b 2 :a 1)  ; These produce the same output

(print "-----------------------")
(terpri)

;;; Functions by default return the value of the last expression
;;; You can also return a specific value with return-from followed by the 
;;; function name
(defun difference (num1 num2)
	(return-from difference(- num1 num2)))
 
(format t "10 - 2 = ~a ~%" (difference 10 2))	

(print "-----------------------")
(terpri)

;;; Get Supermans data
;;; When you use ` you are using quasiquoting which allows you to switch from 
;;; code to data mode
;;; The function between ,() is code mode

(defparameter *hero-size*
	'((Superman (6 ft 3 in) (230 lbs))
	(Flash (6 ft 0 in) (190 lbs))
	(Batman (6 ft 2 in) (210 lbs))))
 	
(defun get-hero-data (size)
	(format t "~a ~%" 
	`(the superhero ,(caar size) is ,(cadar size) tall and weights,(caddar size) ok)))	
	
(get-hero-data *hero-size*)
; outputs '(The Superhero Superman Is (6 Ft 3 In) Tall And Weights (230 Lbs) Ok)'

(print "-----------------------")
(terpri)

;;; Check if every item in a list is a number
(format t "A number ~a ~%" (mapcar #'numberp '(1 2 3 f g)))

(print "-----------------------")
(terpri)

44 mins
https://www.youtube.com/watch?v=ymSq4wHrqyU&list=PLGLfVvz_LVvSX7fVd4OUFp_ODd86H0ZIY&index=23&t=0s