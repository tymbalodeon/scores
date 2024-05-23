\version "2.25.15"

\include "helpers/settings.ily"
\include "scores/the-chairman-dances/sarah/sarah-bass.ily"

\header {
  title = "Sarah"
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
    \sarahBass
  }
}
