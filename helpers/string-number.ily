#(define (name-of music-event)
  (ly:music-property music-event 'name))

#(define (remove-comments string)
   (define (not-nul? character)
     (not (char=? character #\nul)))
   (let ((delete-character? #f)
         (previous-character #\a))
     (string-delete
      (lambda (character)
        (case character
          ((#\%)
           (when (not-nul? character)
             (set! delete-character? #t)))
          ((#\newline)
           (set! delete-character? #f)))
        (set! previous-character character)
        delete-character?)
      string)))

#(define (expand-characters string)
  "Transform in a string, *15x for example, in xxxxxxxxxxxxxxx (15 times)"
  (let ((length (string-length string))
        (star-position #f)
        (times ""))
    (if (> length 0)
        (let loop ((index 0))
          (let ((character (string-ref string index))
                (reset (lambda ()
                         (set! star-position #f)
                         (set! times ""))))
            (cond
             ((eq? character #\*)
              (set! star-position index))
             ((char-numeric? character)
              (if star-position
                  (set! times
                        (string-append times (string character)))))
             ((char-alphabetic? character)
              (if star-position
                  (if (string-null? times)
                      (reset)
                      (let* ((times (string->number times))
                             (replacement (make-string times character)))
                        (set! string
                              (string-replace string
                                              replacement
                                              star-position
                                              (1+ index)))
                        (set! length (string-length string))
                        (set! index (+ star-position times))
                        (reset)))))
             (else (if star-position (reset)))))
          (if (< index (1- length))
              (loop (1+ index)))))
    string))

#(define (add-articulation event-name property-name min max music articulation)
   (define (get-character-set)
     (char-set-adjoin char-set:letter+digit #\+ #\- #\'))

   (define (get-characters articulation)
     (string->list (expand-characters (remove-comments articulation))))

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
          (characters (get-characters articulation))))

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
    music))

add_string_number =
#(define-music-function (music string-number)
   (ly:music? string?)
   (add-articulation 'StringNumberEvent 'string-number 0 9 music string-number))
