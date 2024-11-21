\version "2.25.20"

\include "helpers/settings.ily"
\include "scores/the-chairman-dances/housekeeping/housekeeping-bass.ily"

\header {
  title = "Housekeeping"
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
    \housekeepingBass
  }
}
