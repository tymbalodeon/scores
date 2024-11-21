\version "2.25.20"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/the-chairman-dances/she-leans-they-kiss/she-leans-they-kiss-bass.ily"

\header {
  title = "She Leans, They Kiss"
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
    \sheLeansTheyKissBass
  }
}
