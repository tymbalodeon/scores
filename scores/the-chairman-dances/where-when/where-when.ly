\version "2.25.15"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/the-chairman-dances/where-when/where-when-bass.ily"

\header {
  title = "Where/When"
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
    \whereWhen
  }
}
