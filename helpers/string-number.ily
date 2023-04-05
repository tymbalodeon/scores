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

#(define (expand-skips skips)
   (let ((length (string-length skips))
         (asterisk-index #f)
         (number-of-skips ""))
     (define (reset)
       (set! asterisk-index #f)
       (set! number-of-skips ""))
     (define (append-numeral numeral)
       (set! number-of-skips
             (string-append number-of-skips (string numeral))))
     (define (replace-with-expanded-skips expanded-skips index)
       (set! skips
             (string-replace skips expanded-skips asterisk-index (1+ index))))
     (when (> length 0)
       (let loop ((index 0))
         (let ((character (string-ref skips index)))
           (cond ((eq? character #\*)
                  (set! asterisk-index index))
                 (asterisk-index
                  (cond ((char-numeric? character)
                         (append-numeral character))
                        ((char-alphabetic? character)
                         (when (not (string-null? number-of-skips))
                           (let* ((number (string->number number-of-skips))
                                  (expanded-skips (make-string number character)))
                             (replace-with-expanded-skips expanded-skips index)
                             (set! length (string-length skips))
                             (set! index (+ asterisk-index number))
                             ))
                         (reset))
                        (else (reset)))))
           (when (< index (1- length))
             (loop (1+ index))))))
     skips))

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

add_string_number =
#(define-music-function
   (music string-number)
   (ly:music? string?)
   (add-articulation 'StringNumberEvent 'string-number 0 9 music string-number))
