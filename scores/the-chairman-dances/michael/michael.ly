\version "2.25.3"

\include "settings.ily"

\header {
  title = "Michael"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative b {
  \key b \minor
  \time 6/8
  \clef "bass"

  | R2 * 15

  | r4. r4 b8
  | b,8 cs8 fs8 e8 e,8 fs8

  | r4. b4. ~
  | b2.
  | R2.

  | r4. r8 e,8 fs8
  | r4. b4. ~
  | b2.

  | R2. * 3

  | r8 b8 e8 cs8 fs8 r8

  | R2.

  | r4. r8 e,8 fs8
  | r4. b4. ~
  | b2.

  | R2. * 3

  | r8 b8 e8 r8 cs8 fs8

  | R2.

  | r4. r8 e,8 fs8

  | r4. b4. ~
  | b2.

  | R1.

  | r8 d'8 d8 cs8 cs8 cs8
  | r8 a8 a8 b8 b8 b8
  | r8 d8 d8 cs8 cs8 cs8
  | r8 a8 a8 b8 e,8 fs8

  | b,8 d'8 d8 cs8 cs8 cs8
  | r8 a8 a8 b8 fs'8 b,8
  | r8 d8 d8 cs8 a8 b8
  | b,8 cs8 fs8 e8 e,8 fs8

  | r8 d''8 d8 cs8 cs8 cs8
  | r8 a8 a8 b8 a8 b8
  | r8 d8 d8 cs8 cs8 cs8
  | r8 a8 a8 b8 fs8 e8

  | b8 d'8 d8 cs8 cs8 cs8
  | r8 a8 a8 b8 fs'8 b,8
  | a,8 d'8 d8 cs8 a8 b8
  | b,8 cs8 fs8 e8 e,8 fs8

  | r8 b8 b8 r8 b8 b8
  | r8 b8 bf8 a8 af8 g8
  | r8 b8 b8 r8 b8 b8
  | r8 b8 bf8 a8 af8 g8

  | r4. r8 e8 fs8
  | r8 b8 b8 r8 b8 b8
  | r8 b8 bf8 a8 af8 g8
  | r8 b8 b8 r8 b8 b8

  | r8 b8 bf8 a8 af8 g8

  | R2. * 3

  | r8 b8 e8 r8 cs8 fs8

  | R2. * 3

  | r8 b,8 e8 cs8 fs8 r8

  | R2. * 3

  | r4. r8 e,8 es8

  | fs4. a4.
  | d4. a'8 d,8 ds8
  | e4. fs4.
  | g4. b8 d8 e8

  | fs4. ~ fs8 e8 d8
  | e8. d16 b8 d4.
  | r8 a16 as16 b8 d8 b8 d8
  | fs8 a8 fs8
    \ottava #1 a8 b8 b8

  | cs4. ~ cs8 a8 b8
  | cs8. d16 cs8 b8 a8 b8
  | b2.
  | \tuplet 4/6 { b16 a16 b16 cs16 } \tuplet 4/6 { \acciaccatura { cs8 } d16 cs16 b16 a16 }

  | \tuplet 4/6 { b16 a16 b16 cs16 } \tuplet 4/6  { \acciaccatura { cs8 } d16 cs16 b16 a16 }
  | \tuplet 4/6 { b16 cs16 \acciaccatura { cs8 } d16 cs16 }
    \tuplet 5/3 { b8 cs8 b8 a8 b8 }
  | a4. \acciaccatura { g8 } a8. fs16 e8
    \ottava #0
  | d8 cs8 b8 a8 fs8 e8

  | fs4. fs,4.
  | a4. d8 a'8 ds,8
  | e,8 g'8 e,8 g8 b'8 g,8
  | b8 d'8 b,8 d8
    \ottava #1 b''8 cs8

  | d2. ~
  | d2.

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \compressMMRests
    \music
  }
}
