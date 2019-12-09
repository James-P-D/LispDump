(setq *print-case* :capitalize)

; Dictionaries effectively
(defparameter *heroes*
    '((Superman (Clark Kent))
      (Batman (Bruce Wayne))))
      
(format t "Superman Data ~a ~%" (assoc 'sUpErMaN *heroes*)) ; Note it doesn't care about case of key

(format t "Superman is ~a ~%" (cadr (assoc 'superman *heroes*)))

