\version "2.25.21"

\include "helpers/settings.ily"
\include "scores/the-chairman-dances/penitent/penitent-bass.ily"

\header {
  title = "Penitent"
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
    \penitentBass
  }
}
