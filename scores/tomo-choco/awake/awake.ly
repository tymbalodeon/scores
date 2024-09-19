\version "2.25.19"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/tomo-choco/awake/awake-bass.ily"

\header {
  title = "Awake"
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
    \awakeBass
  }
}
