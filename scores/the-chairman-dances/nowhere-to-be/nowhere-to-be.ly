\version "2.25.21"

\include "helpers/settings.ily"
\include "scores/the-chairman-dances/nowhere-to-be/nowhere-to-be-bass.ily"

\header {
  title = "Nowhere To Be"
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
    \nowhereToBeBass
  }
}
