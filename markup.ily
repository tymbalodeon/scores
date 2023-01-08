half_bracket =
#(define-music-function
  (distance-from-notehead height width)
  (number? number? number?)
  (let* ((start-x -0.7)
         (end-x (+ start-x width))
         (start-y distance-from-notehead)
         (end-y (+ start-y height)))
   #{
        \tweak outside-staff-priority ##f
        -\markup {
            \with-dimensions-from \null
            \path #0.14
            #`((moveto ,start-x ,end-y)
               (lineto ,start-x ,start-y)
               (lineto ,end-x ,start-y))
        }
    #}))
