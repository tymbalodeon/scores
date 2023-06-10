\version "2.25.5"

\include "settings.ily"

\header {
  title = "Where/When"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
  \key c \major
  \clef "bass"

  | R1 * 4

  | c4 r8 c g g4 c8 ~
  | c c4 c8 g' g, c cs
  | d4 r8 d a a4 d8 ~
  | d d4 d8 a' a, d ds

  | e
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
