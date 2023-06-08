\version "2.25.5"

\include "settings.ily"

\header {
  title = "She Leans, They Kiss"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative b, {
  \key b \major
  \clef "bass"

  | b1
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
