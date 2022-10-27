#(define ((set-bars-per-line line-lengths-in-bars) context)
  (let* ((current-line-lengths line-lengths-in-bars)
         (total (1+ (car current-line-lengths))))
    `((acknowledgers
       (paper-column-interface
        . ,(lambda (engraver grob source-engraver)
             (let ((internal-bar (ly:context-property context 'internalBarNumber)))
               (if (and (pair? current-line-lengths)
                        (= (remainder internal-bar total) 0)
                        (eq? #t (ly:grob-property grob 'non-musical)))
                   (begin
                     (set! (ly:grob-property grob 'line-break-permission) 'force)
                     (if (null? (cdr current-line-lengths))
                         (set! current-line-lengths line-lengths-in-bars)
                         (set! current-line-lengths (cdr current-line-lengths)))
                     (set! total (+ total (car current-line-lengths))))))))))))
