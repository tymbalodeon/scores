\version "2.24.0"

\include "settings.ily"

\header {
  title = "Wreck"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative a {
    \clef "bass"
    \tempo 4 = 100

    | R1
    | r2 r4 r8 e8
    | a1
    | r2 r4 r8 e8

    | a1
    | r2 r4 r8 e8
    | a4 r4 r2
    | r2 r4 r8 e8

    | c'4 r4 r2
    | r2 r4 r8 e,8
    | g4 r4 r2
    | r2 r4 r8 e8

    | a4 r4 r2

    \bar "|."
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
