\version "2.25.22"

\include "helpers/settings.ily"
\include "scores/the-chairman-dances/a-family-waiting/a-family-waiting-bass.ily"

\header {
  title = "A Family Waiting"
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
    \aFamilyWaitingBass
  }
}
