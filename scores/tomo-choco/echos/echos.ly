\version "2.25.20"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/tomo-choco/echos/echos-bass.ily"

\header {
  title = "Echos"
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
    \removeWithTag #'album
    \echosBass
  }
}
