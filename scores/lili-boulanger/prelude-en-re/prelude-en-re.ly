\version "2.25.3"

\include "settings.ily"
\include "helpers/half-bracket.ily"
\include "prelude-en-re-upper-staff.ily"
\include "prelude-en-re-lower-staff.ily"
\include "helpers/bar-numbers/center-bar-numbers.ily"

\header {
  title = "Prélude en Ré♭"
  composer = "Lili Boulanger"
}

\layout {
  \context {
    \Staff
    \remove Ottava_spanner_engraver
  }
  \context {
    \Voice
    \consists Ottava_spanner_engraver
  }
}

\score {
  \new PianoStaff {
    <<
      \new Staff = "upper" \upper_staff
      \new Staff = "lower" \lower_staff
    >>
  }
}
