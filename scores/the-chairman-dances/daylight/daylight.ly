\version "2.25.5"

\include "settings.ily"

\header {
  title = "Daylight"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

music = \relative c'' {
  \clef "bass"
  \tempo 4. = 42
  \key g \major
  \time 6/8


  g2. ~
  g2. ~
  g2.
  b2. ~
  b8
  g4
  fs4. ~
  fs2.
  g2. ~
  g2. ~
  g2.
  b2. ~
  b8
  g4
  fs4.
  g,2. ~
  g4. cs16 d16 ~ d4
  f,,2. ~
  f2.
  g'2. ~
  g8 cs16 d8. fs16 g16 ~ g4
  f,,2. ~
  f2.
  g'4 r8 r4.
  R2.
  f4 r8 r4.
  R2.
  g4. d4.
  b4. g4.
  f2. ~
  f4. r4.
  b4. ~ b8 fs8 a8
  b4. ~ b8 e8 es8
  fs4. ~ fs8 f8 e8
  d4. ~ d8 df8 c8
  b4. ~ b8 fs8 a8
  b4. fs'8 a,8 b8
  c4. c8 b8 a8
  g4. g'8 g,8 fs8
  e4. e'8 e,8 fs8

  \time 3/8

  g8 r8 r8

  \time 6/8

  a2. ~
  a4. fs8 r8 r8
  g''2. ~
  g2. ~
  g2.
  b2. ~
  b8
  g4
  fs4. ~
  fs2.
  g2. ~
  g2. ~
  g2.
  b2. ~
  b8
  g4
  fs4.
  g,8. g16 g16 d16 g8. g16 g16 d16
  g8. g16 g16 d16 g16 a16 g8 fs8
  f8. f16 f16 a,16 f'8. cs16 f16 g16
  f8. f16 f16 a,16 f'8. cs16 f16 fs16
  g8. g16 g16 d16 g8. g16 g16 d16
  g8. g16 g16 d16 g16 a16 g8 fs8
  f8. f16 f16 cs16 f8. cs16 f16 g16
  f8. f16 f16 cs16 f8. cs16 f16 g16

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
