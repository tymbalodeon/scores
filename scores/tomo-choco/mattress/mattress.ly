\version "2.25.19"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/tomo-choco/mattress/mattress-bass.ily"

\header {
  title = "Mattress"
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
    \mattressBass
  }
}
