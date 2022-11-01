\version "2.23.11"

\include "settings.ily"
\include "style.ily"
\include "problem-with-it-melody.ily"
\include "problem-with-it-chords.ily"
\include "problem-with-it-structure.ily"

\header {
  title = "Problem With It"
  composer = "Plains"
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
