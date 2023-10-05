\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Least of These"
  subtitle = "The Chairman Dances"
  composer = "Eric Krewson"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
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
