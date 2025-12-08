\version "2.25.28"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/radiohead/go-to-sleep/go-to-sleep-bass.ily"

\header {
  title = "Go To Sleep"
  subtitle = "Radiohead"
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \compressMMRests
    \goToSleepBass
  }
}
