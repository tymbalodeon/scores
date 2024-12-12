\version "2.25.21"

\include "helpers/settings.ily"
\include "scores/the-chairman-dances/thought-id-lost-you/thought-id-lost-you-bass.ily"

\header {
  title = "Thought I'd Lost You"
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
    \thoughtIdLostYouBass
  }
}
