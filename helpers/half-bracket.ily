halfBracket =
#(define-music-function
   (distance-from-notehead height width)
   (number? number? number?)
   (let* ((x-start -0.7)
          (x-end (+ x-start width))
          (y-start distance-from-notehead)
          (y-end (+ y-start height)))
     #{
       \tweak outside-staff-priority ##f
       -\markup {
                 \with-dimensions-from \null
                 \path #0.14
                 #`((moveto ,x-start ,y-end)
                    (lineto ,x-start ,y-start)
                    (lineto ,x-end ,y-start))
                 }
       #}))
