\version "2.25.5"

\include "settings.ily"

\header {
  title = "Zippers"
  composer = "Ashley Cubbler"
}

music = \relative c'' {
  \key c \major
  \time 4/4
  | c1
}

\score {
  \new Staff \with {
    instrumentName = "Instrument"
    \numericTimeSignature
  } {
    \compressMMRests
    \music
  }
}
