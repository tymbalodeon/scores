\version "2.25.11"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Victim of Victory"
  subtitle = "Jewel Case"
  composer = "Nick Brown"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
  \key e \minor
  \time 4/4
  \clef "bass"

  | g8 g r4 g8 g r4
  | g8 g r4 g fs
  | e8 e r4 e8 e r4
  | e8 e r4 e fs

  \repeat volta 2 {
    | g8 g r4 g8 g r4
    | g8 g r4 g fs
    | e8 e r4 e8 e r4
    | e8 e r4

    \alternative {
      \volta 1 {
        e fs
      }

      \volta 2 {
        e8 g a b
      }
    }
  }

  | c4 r8 c ~ c4 r8 g
  | c4 r8 c ~ c4 b
  | a4 r8 a ~ a4 r8 e
  | a4 r8 a ~ a4 a

  | g8 g r4 g8 g r4
  | g8 g r4 g8 g r e (
  | g8 ) g r4 g8 g r4
  | g8 g r e ( g8 ) a b d

  | g8 g r d g g r d
  | g8 g r d g4 fs
  | e8 e r b e8 e r b
  | e8 e r b e4 fs

  | g8 g r d g g r d
  | g8 g r d g4 fs
  | e8 e r b e8 e r b
  | e8 e r b e4 fs
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
