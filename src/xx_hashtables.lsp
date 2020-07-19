;;; ---------- HASH TABLE ---------- 
;;; A collection of key value pairs
 
;;; Create a hash table
(defparameter people (make-hash-table))
 
;;; Set the key as 102 and the value to Paul Smith
(setf (gethash '102 people) '(Paul Smith))
(setf (gethash '103 people) '(Sam Smith))
 
;;; Get the value stored in the key 102
(gethash '102 people)
 
;;; maphash executes a function on each item
;;; ~% = newline
(maphash #'(lambda (k v) (format t "~a = ~a~%" k v)) people)
 
;;; Remove an entry with the key
(remhash '103 people)