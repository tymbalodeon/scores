\version "2.25.21"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/tomo-choco/zippers/zippers-bass.ily"

\header {
  title = "Zippers"
  subtitle = "Tomo Choco"
  composer = "Ashley Cubbler"
  arranger = "Ben Rosen, bass"
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \compressMMRests
    \zippersBass
  }
}
