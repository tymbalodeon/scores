#(define (delete-comments string)
   (let ((delete? #f)
         (previous-character #\a))
     (string-delete
      (lambda (character)
        (case character
          ((#\%)
           (set! delete? #t))
          ((#\newline)
           (set! delete? #f)))
        (set! previous-character character)
        delete?)
      string)))

#(define (expand-skips articulations)
   (define (space-or-newline? character)
     (or (char=? character #\space)
         (char=? character #\newline)))
   (define (get-number-of-skips articulation)
     (let* ((characters (string->list articulation))
            (numeric-characters (filter char-numeric? characters))
            (number-of-skips (list->string numeric-characters)))
       (string->number number-of-skips)))
   (define (get-skips number-of-skips)
     (cond ((= number-of-skips 0) "")
           ((= number-of-skips 1) "s")
           (else (string-append "s " (get-skips (- number-of-skips 1))))))
   (define (replace-with-skip-characters articulation)
     (cond ((string-contains articulation "*")
            (get-skips (get-number-of-skips articulation)))
           (else articulation)))
   (let ((articulations (string-split articulations space-or-newline?)))
     (string-join (map replace-with-skip-characters articulations))))

#(define (add-articulation event-name property-name min max music finger-str)
   (let* ((character-set (char-set-adjoin char-set:letter+digit #\+ #\- #\'))
          (characters (string->list (expand-skips (delete-comments finger-str))))
          (get-next-valid-character
           (lambda ()
             (define (loop)
               (let ((character (car characters)))
                 (if (char-set-contains? character-set character)
                     character
                     (begin (set! characters (cdr characters))
                            (if (null? characters) #\nul (loop))))))
             (loop)))
          (current-char (if (null? characters)
                            #\nul
                            (get-next-valid-character)))
          (next-char (lambda (filter?)
                       (set! current-char
                             (if (or (null? characters)
                                     (begin (set! characters (cdr characters))
                                            (null? characters)))
                                 #\nul
                                 (if filter? (get-next-valid-character)
                                     (car characters)))))))
     (define (set-direction direction)
       (cond ((char=? current-char #\+)
              (next-char #t)
              (set-direction 1))
             ((char=? current-char #\-)
              (next-char #t)
              (set-direction -1))
             (else direction)))
     (music-map
      (lambda (event)
        (if (and (eq? (ly:music-property event 'name) 'NoteEvent)
                 (pair? characters))
            (let*((dir (set-direction 0))
                  (tweaks? (and
                            (char=? current-char #\')
                            (let loop ((text-list '())
                                       (previous-character current-char))
                              (next-char #f)
                              (let*((apostrophe? (char=? current-char #\'))
                                    (escaped-char? (and (or apostrophe?
                                                            (char=? current-char #\%))
                                                        (char=? previous-character #\nul))))
                                (cond (escaped-char?
                                       (loop (cons current-char (cdr text-list))
                                             current-char))
                                      ((or apostrophe? (null? characters))
                                       (list (cons
                                              (quote text)
                                              (reverse-list->string text-list))))
                                      (else (loop (cons current-char text-list)
                                                  current-char)))))))
                  (index (if tweaks? min (- (char->integer current-char)
                                            (char->integer #\0))))
                  (tweaks (if tweaks? tweaks? '())))
              (if (and (>= index min)(<= index max))
                  (ly:music-set-property! event
                                          'articulations
                                          (append (list (make-music
                                                         event-name
                                                         'tweaks tweaks
                                                         'direction dir
                                                         property-name index))
                                                  (ly:music-property event 'articulations))))
              (next-char #t)))
        event)
      music)))
