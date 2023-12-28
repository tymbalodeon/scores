\version "2.25.1"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Victim of Victory"
  subtitle = "Jewel Case"
  composer = "Nick Brown"
  arranger = "Ben Rosen, bass"
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
