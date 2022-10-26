#(define ((set-bars-per-line line-lengths-in-bars) context)
  (let* ((working-copy line-lengths-in-bars)
         (total (1+ (car working-copy))))
    `((acknowledgers
       (paper-column-interface
        . ,(lambda (engraver grob source-engraver)
             (let ((internal-bar (ly:context-property context 'internalBarNumber)))
               (if (and (pair? working-copy)
                        (= (remainder internal-bar total) 0)
                        (eq? #t (ly:grob-property grob 'non-musical)))
                   (begin
                     (set! (ly:grob-property grob 'line-break-permission) 'force)
                     (if (null? (cdr working-copy))
                         (set! working-copy line-lengths-in-bars)
                         (begin
                           (set! working-copy (cdr working-copy))))
                           (set! total (+ total (car working-copy))))))))))))
