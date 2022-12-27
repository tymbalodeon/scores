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


#(define (calculate-glissando-slope grob)
  (define (get-pitch-difference left-pitch right-pitch)
   (- (ly:pitch-alteration right-pitch) (ly:pitch-alteration left-pitch)))
  (let* ((original (ly:grob-original grob))
         (left-bound (ly:spanner-bound original LEFT))
         (right-bound (ly:spanner-bound original RIGHT))
         (left-pitch (ly:event-property (event-cause left-bound) 'pitch))
         (right-pitch (ly:event-property (event-cause right-bound) 'pitch))
         (is-same-octave (=
                          (ly:pitch-octave left-pitch)
                          (ly:pitch-octave right-pitch)))
         (is-same-notename (=
                            (ly:pitch-notename left-pitch)
                            (ly:pitch-notename right-pitch)))
         (is-same-staff-note (and is-same-octave is-same-notename))
         (extra-dy (if is-same-staff-note
                    (get-pitch-difference left-pitch right-pitch)
                    0)))
   (set! (ly:grob-property grob 'extra-dy) extra-dy)
   (ly:line-spanner::print grob)))
