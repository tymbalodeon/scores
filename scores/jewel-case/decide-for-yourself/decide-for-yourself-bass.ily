\version "2.25.16"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Decide For Yourself"
  subtitle = "Jewel Case"
  composer = "Nick Brown"
  arranger = "Ben Rosen, bass"
}

music = \relative c'' {
    \key c \major
    \time 4/4
    \clef "bass"

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
