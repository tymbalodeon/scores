\version "2.25.22"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/the-chairman-dances/silver-in-the-sun/silver-in-the-sun-bass.ily"

\header {
  title = "Silver in the Sun"
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
    \removeWithTag #'album
    \silverInTheSunBass
  }
}
