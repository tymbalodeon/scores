\version "2.25.20"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"
\include "scores/the-chairman-dances/i-was-struck-by-the-words/i-was-struck-by-the-words-bass.ily"

\header {
  title = "Struck By The Words"
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
    \iWasStruckByTheWordsBass
  }
}
