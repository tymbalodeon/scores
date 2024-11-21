\version "2.25.20"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/tomo-choco/scroll/scroll-bass.ily"

\header {
  title = "Scroll"
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
    \scrollBass
  }
}
