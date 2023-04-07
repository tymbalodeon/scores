reverseArticulationDirections =
#(define-scheme-function
   (articulation-string)
   (string?)
   (define (convert-to-list articulation-string)
     (string-split articulation-string #\space))
   (define (append-minus-sign articulations)
     (if (null? articulations)
         ""
         (let* ((with-minus (string-append "-" (car articulations)))
                (with-space (string-append with-minus " ")))
           (string-append with-space
                          (append-minus-sign (cdr articulations))))))
   (let ((articulations (convert-to-list articulation-string)))
     (append-minus-sign articulations)))
