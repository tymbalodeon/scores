\version "2.23.11"

\include "settings.ily"
\include "style.ily"
\include "kamera-melody.ily"
\include "kamera-chords.ily"
\include "kamera-structure.ily"

\header {
  title = "Kamera"
  composer = "Wilco"
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
