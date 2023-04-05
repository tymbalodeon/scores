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
       (set! number-of-skips (string-append number-of-skips
                                            (string numeral))))
     (define (replace-with-expanded-skips expanded-skips index)
       (set! skips (string-replace skips
                                   expanded-skips
                                   asterisk-index
                                   (1+ index))))
     (when (> length 0)
       (let loop ((index 0))
         (let ((character (string-ref skips index)))
           (cond ((eq? character #\*)
                  (set! asterisk-index index))
                 (asterisk-index
                  (cond ((char-numeric? character)
                         (append-numeral character))
                        ((char-alphabetic? character)
                         (if (string-null? number-of-skips)
                             (reset)
                             (let* ((number (string->number number-of-skips))
                                    (expanded-skips (make-string number character)))
                               (replace-with-expanded-skips expanded-skips index)
                               (set! length (string-length skips))
                               (set! index (+ asterisk-index number))
                               (reset))))
                        (else (reset)))))
           (when (< index (1- length))
             (loop (1+ index))))))
     skips))

#(define (add-articulation event-name property-name min max music articulation)
   (define (get-character-set)
     (char-set-adjoin char-set:letter+digit #\+ #\- #\'))
   (define (get-characters articulation)
     (string->list (expand-skips (delete-comments articulation))))
   (define (name-of music-event)
     (ly:music-property music-event 'name))
   (define (note-event? event)
     (eq? (name-of event) 'NoteEvent))
   (define (valid-articulation? input)
     (pair? input))
   (define (can-add-articulation? event input)
     (and (note-event? event)
          (valid-articulation? input)))
   (define (in-range? index min max)
     (and (>= index min) (<= index max)))
   (define (set-articulations event
                              event-name
                              tweaks
                              direction
                              property-name
                              index)
     (let ((articulations
            (append (list (make-music event-name
                                      'tweaks tweaks
                                      'direction direction
                                      property-name index))
                    (ly:music-property event 'articulations))))
       (ly:music-set-property! event 'articulations articulations)))
   (let* ((character-set (get-character-set))
          (characters (get-characters articulation)))
   (define (get-next-valid-character)
     (let ((character (car characters)))
       (if (char-set-contains? character-set character)
           character
           (begin (set! characters (cdr characters))
                  (if (null? characters)
                      #\nul
                      (get-next-valid-character))))))
   (define (get-current-character)
     (if (null? characters)
         #\nul
         (get-next-valid-character)))
   (define set-next-character
     (lambda (filter?)
       (set! current-character
             (if (or (null? characters)
                     (begin (set! characters (cdr characters))
                            (null? characters)))
                 #\nul
                 (if filter?
                     (get-next-valid-character)
                     (car characters))))))
   (define (get-direction direction)
     (cond ((char=? current-character #\+)
            (set-next-character #t)
            (get-direction 1))
           ((char=? current-character #\-)
            (set-next-character #t)
            (get-direction -1))
           (else direction)))
   (music-map
    (lambda (event)
      (when (can-add-articulation? event characters)
        (let* ((direction (get-direction 0))
               (tweaks? (and
                         (char=? current-character #\')
                         (let loop ((text-list '())
                                    (previous-character current-character))
                           (set-next-character #f)
                           (let* ((apostrophe? (char=? current-character #\'))
                                  (escaped-character?
                                   (and (or apostrophe?
                                            (char=? current-character #\%))
                                        (char=? previous-character #\nul))))
                             (cond
                              (escaped-character?
                               (loop (cons current-character (cdr text-list))
                                     current-character))
                              ((or apostrophe? (null? characters))
                               (list (cons
                                      (quote text)
                                      (reverse-list->string text-list))))
                              (else (loop (cons current-character text-list)
                                          current-character)))))))
               (index (if tweaks? min (- (char->integer current-character)
                                         (char->integer #\0))))
               (tweaks (if tweaks? tweaks? '())))
          (when (in-range? index min max)
            (set-articulations event event-name tweaks direction property-name index))
          (set-next-character #t)))
      event)
    music)))

add_string_number =
#(define-music-function (music string-number)
   (ly:music? string?)
   (add-articulation 'StringNumberEvent 'string-number 0 9 music string-number))
