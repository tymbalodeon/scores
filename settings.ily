\language "english"

\pointAndClickOff

\header {
  tagline = ##f
}

#(set! paper-alist (cons '("video-slide" . (cons (* 9 in) (* 5.06525 in)))
                        paper-alist))

\paper {
  #(set-paper-size "letter")
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.5\in
}
