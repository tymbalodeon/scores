\version "2.25.17"

\include "helpers/settings.ily"
\include "scores/the-chairman-dances/natalie/natalie-bass.ily"

\header {
  title = "Natalie"
  subtitle = "The Chairman Dances"
  composer = "Eric Krewson"
  arranger = "Ben Rosen, bass"
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
  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \compressMMRests
    \natalieBass
  }
}
