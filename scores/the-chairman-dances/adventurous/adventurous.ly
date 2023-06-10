\version "2.25.5"

\include "settings.ily"

\header {
  title = "Adventurous"
  composer = "The Chairman Dances (Eric Krewson)"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
  \key a \major
  \clef "bass"

  | R1
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \compressMMRests
    \music
  }
}
