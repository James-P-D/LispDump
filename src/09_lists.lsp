(setq *print-case* :capitalize)

(cons 'foo 'bar)       ;concatone strickly two items

(list 'foo 'bar 'zoo)

(cons 'foo '(zoo moo)) ;concatone strickly two items

(format t "First = ~a ~%" (car '(foo bar zoo moo)))

(format t "Rest = ~a ~%" (cdr '(foo bar zoo moo)))

(format t "Second = ~a ~%" (car (cdr '(foo bar zoo moo))))

(format t "Second = ~a ~%" (cadr '(foo bar zoo moo)))

(format t "Fourth = ~a ~%" (cadddr '(foo bar zoo moo)))

(format t "Is it a list? = ~a ~%" (listp '(foo bar zoo moo)))

(format t "Is it a list? = ~a ~%" (listp 5))

; Is 3 in the list? If so, return 't' else 'nil'
(format t "Is 3 in list? = ~a ~%" (if (member 3 '(1 2 3 4 5 6)) t nil))

(format t "3 onwards = ~a ~%" (member 3 '(1 2 3 4 5 6)))   ; Returns (3 4 5 6)

(format t "9 onwards = ~a ~%" (member 9 '(1 2 3 4 5 6)))   ; Returns nil

(format t "appending = ~a ~%" (append '(foo) '(bar) '(moo zoo))) ; items needs to be lists. "append 'foo" won't work

(defparameter *numbers* '(1 2 3 4 5))
(format t "before push = ~a ~%" *numbers*)
(push -1 *numbers*)
(format t "before push = ~a ~%" *numbers*)

(format t "Nth item = ~a ~%" (nth 3 *numbers*)) ; zero-indexed, obviously

;p-list
;;; Create a plist which uses a symbol to describe the data
(defvar superman (list :name "Superman" :secret-id "Clark Kent"))
(defvar batman (list :name "Batman" :secret-id "Bruce Wayne"))
 
;;; This list will hold heroes
(defvar *hero-list* nil)
 
;;; Adds items to our list
(push superman *hero-list*)
(push batman *hero-list*)
 
(format t "superman = ~a ~%" superman)
(format t "superman = ~a ~%" batman)
(format t "*hero-list* = ~a ~%" *hero-list*)
 
;;; Cycle through all heros in the list and print them out
(dolist (hero *hero-list*) 
	;; Surround with ~{ and ~} to automatically grab data from list
	(format t "~{~a : ~a ~}~%" hero))