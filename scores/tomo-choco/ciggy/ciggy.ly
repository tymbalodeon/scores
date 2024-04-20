\version "2.25.13"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Ciggy"
  composer = "Ashley Cubbler"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
    \key af \major
    \time 4/4
    \clef "bass"

    | df'8. df16 c4 bf af
    | bf8 af4 g8 ~ g f ef16 df f,8
    | r4 af'4 af,8 af4.
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
