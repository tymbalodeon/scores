\version "2.23.11"

\include "settings.ily"
\include "style.ily"
\include "cover-up-melody.ily"
\include "cover-up-chords.ily"
\include "cover-up-structure.ily"

\header {
  title = "Cover Up"
  composer = "Michael Penn"
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
