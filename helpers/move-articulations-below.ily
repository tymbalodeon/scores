moveArticulationsBelow =
#(define-scheme-function
   (articulation-string)
   (string?)
   (define (convert-to-list articulation-string)
     (string-split articulation-string #\space))
   (define (prepend-direction-sign articulation)
     (string-append (string-append "-" articulation) " "))
   (let ((articulations (convert-to-list articulation-string)))
     (string-join (map prepend-direction-sign articulations))))
