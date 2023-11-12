\version "2.25.10"

\include "helpers/settings.ily"

\header {
  title = "Small Rooms"
  composer = "Ashley Cubbler (Tomo Choco)"
}

music = \relative c'' {
    \key c \major
    \time 4/4
    | c1
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
