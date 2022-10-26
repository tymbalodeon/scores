\version "2.23.11"

\include "settings.ily"
\include "style.ily"
\include "same-changes-melody.ily"
\include "same-changes-chords.ily"
\include "same-changes-structure.ily"

\header {
  title = "Same Changes"
  composer = "Sam Phillips"
}

melody = \new Staff {
  <<
    \melody
    \structure
  >>
}

\layout {
  \context {
    \Score
    \consists #(set-bars-per-line '(4))
  }
}

\score {
  <<
    \numericTimeSignature
    \changes
    \melody
  >>
}
