\version "2.23.11"

\include "settings.ily"
\include "style.ily"
\include "this-tornado-loves-you-melody.ily"
\include "this-tornado-loves-you-chords.ily"
\include "this-tornado-loves-you-structure.ily"

\header {
  title = "This Tornado Loves You"
  composer = "Neko Case"
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
    \consists #(set-bars-per-line '(4 4 4 3 4 4 5 4 4 4 6 4 4 4 4 4 5))
  }
}

\score {
  <<
    \numericTimeSignature
    \changes
    \melody
  >>
}
