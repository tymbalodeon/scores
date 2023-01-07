\version "2.24.0"

\include "settings.ily"
\include "prelude-en-re-upper-staff.ily"
\include "prelude-en-re-lower-staff.ily"

\header {
  title = "Prélude en Ré♭"
  composer = "Lili Boulanger"
}

\score {
  \new PianoStaff {
    \overrideTimeSignatureSettings 3/4 1/4 #'(1 1 1) #'()
    <<
      \new Staff = "upper" \upper_staff
      \new Staff = "lower" \lower_staff
    >>
  }
}
