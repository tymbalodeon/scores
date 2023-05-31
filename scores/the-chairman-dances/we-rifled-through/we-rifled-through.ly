\version "2.25.5"

\include "settings.ily"

\header {
  title = "We Rifled Through"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative e {
  \key d \major
  \time 4/4
  \clef "bass"

  \partial 4
  | r4

  | R1 * 3
  | r2. r8 e ~

  | e4 e8 b e fs g a ~
  | a4 a8 e a g fs d ~
  | d4 d8 a d a' fs g ~
  | g4 g, g'8 fs4 e8 ~

  | e4 e8 b e fs g a ~
  | a4 r8 e' d b a fs ~
  | fs
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
