\language "english"

\pointAndClickOff

\header {
  tagline = ##f
}

#(set! paper-alist
       (assoc-set! paper-alist "video-slide" '(cons (* 9 in) (* 5.06525 in))))

paperBlock =
#(define-scheme-function
   (paper-type)
   (string?)
   #{
     \paper {
       #(set-paper-size paper-type)
       left-margin = 0.75\in
       right-margin = 0.75\in
       top-margin = 0.5\in
       bottom-margin = 0.5\in
     }
   #})

\paperBlock "letter"
