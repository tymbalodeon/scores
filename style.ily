#(define ((set-bars-per-line line-lengths-in-bars) context)
  (define (get-total line-lengths-in-bars)
   (let ((first-length (car line-lengths-in-bars)))
    (1+ first-length)))
  (let* ((current-line-lengths line-lengths-in-bars)
         (total (get-total current-line-lengths)))
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
