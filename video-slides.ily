#(set-global-staff-size 18)

\paper {
  #(set! paper-alist (cons '("video-slides" . (cons (* 9 in) (* 5.06525 in)))
                      paper-alist))
  #(set-paper-size "video-slides")
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.5\in
}
