\version "2.23.11"

\include "settings.ily"
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

\score {
  <<
    \numericTimeSignature
    \changes
    \melody
  >>
}
