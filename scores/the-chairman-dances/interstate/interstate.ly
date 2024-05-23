\version "2.25.15"

\include "helpers/settings.ily"
\include "scores/the-chairman-dances/interstate/interstate-bass.ily"

\header {
  title = "Interstate"
  subtitle = "The Chairman Dances"
  composer = "Eric Krewson"
  arranger = "Ben Rosen, bass"
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \compressMMRests
    \interstateBass
  }
}
