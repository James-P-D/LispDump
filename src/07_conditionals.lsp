(defparameter *age* 18) ; Create variable age
 
;;; Relational Operators > < >= <= =
 
;;; Check if age is greater than or equal to 18
 
(if (= *age* 18)
    (format t "You can vote~%")
    (format t "You can't vote~%"))
 
;;; How to check for not equal
 
(if (not (= *age* 18))
    (format t "You can vote~%")
    (format t "You can't vote~%"))
 
;;; Logical Operators : and, or, not
 
(if (and (>= *age* 18) (<= *age* 67))
    (format t "Time for work~%")
    (format t "Work if you want~%"))
 
(if (or (<= *age* 14) (>= *age* 67) )
    (format t "You shouldn't work~%")
    (format t "You should work~%"))
 
(defparameter *num* 2)
(defparameter *num-2* 2)
(defparameter *num-3* 2)
 
;;; You can execute multiple statements in an if with progn
 
(if (= *num* 2)
	(progn 
		(setf *num-2* (* *num-2* 2))
		(setf *num-3* (* *num-3* 3)))
	(format t "Not equal to 2~%"))
 
(format t "*num-2* = ~d ~%" *num-2*)
(format t "*num-3* = ~d ~%" *num-3*)
 
;;; Case performs certain actions depending on conditions
(defun get-school (age)
	(case age
		(5 (print "Kindergarten"))
		(6 (print "First Grade"))
		(otherwise '(middle school))))
	
(get-school 5)
(get-school 6)
(get-school 7)
 
(terpri) ; Newline
 
;;; when allows you to execute multiple statements by default
 
(when (= *age* 18)
	  (setf *num-3* 18)
      (format t "Go to college you're ~d ~%" *num-3*))
 
;;; With unless code is executed if the expression is false
 
(unless (not (= *age* 18))
        (setf *num-3* 20)
        (format t "Something Random ~%")
)
 
;;; cond is like if else if else
 
(defvar *college-ready* nil)
 
(cond ((>= *age* 18) ; If T do this
       (setf *college-ready* 'yes)
	   (format t "Ready for College ~%"))
	  ((< *age* 18) ; Else If T do this
	   (setf *college-ready* 'no)
	   (format t "Not Ready for College ~%"))
	  (t (format t "Don't Know ~%"))) ; Else do this by default (t is for true)
	  