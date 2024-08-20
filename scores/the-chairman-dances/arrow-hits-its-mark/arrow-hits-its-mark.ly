\version "2.25.17"

\include "helpers/settings.ily"

\header {
  title = "Arrow Hits Its Mark"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

music = \relative c'' {
  \clef "bass"
  \tempo 4 = 140
  \key a \major

  | R1 * 7
  | \ottava #1
    r8 a8 g8 a8 e8 fs8 a,8 r8
    \ottava #0

  | a,4 -\markup \italic "loco" r8 e'8 fs8 a8 e'8 cs8 ~
  | cs8 a4 b8 ~ b8 e,8 fs8 r8
  | g,4 d'8 e8 ~ e8 a8 g8 fs8 ~
  | fs8 d4 cs'8 ~ cs8 b8 a8 r8

  | fs,4 r8 cs'8 e8 fs4 b8 ~
  | b8 a4 fs8 ~ fs8 e8 cs8 r8
  | f,4 c'8 d8 f8 c'8 bf8 a8
  | g8 a8 f8 g8 c,8 d8 g,8 r8

  | e''8 e8 e8 fs8 e4 e8 fs8
  | e8 d8 cs4 ~ cs2
  | e8 e8 e8 fs8 e4 e8 fs8
  | e8 d8 cs4 ~ cs8 a8 cs8 a8

  | cs8 cs8 cs8 d8 cs4 cs8 d8
  | e8 d8 cs4 ~ cs4. gs8
  | a8 a8 a8 b8 a4 a8 b8
  | cs8 b8 a4 ~ a8 e8 a8 e8

  | a,4 r8 e'8 fs8 a8 e'8 cs8 ~
  | cs8 a4 b8 ~ b8 e,8 fs8 r8
  | g,4 d'8 e8 ~ e8 a8 g8 fs8 ~
  | fs8 d4 cs'8 ~ cs8 b8 a8 r8

  | fs,4 r8 cs'8 e8 fs4 b8 ~
  | b8 a4 fs8 ~ fs8 e8 cs8 r8
  | f,4 c'8 d8 f8 c'8 bf8 a8
  | g8 a8 f8 g8 c,8 d8 g,8 r8

  | d'8 a8 d8 e8 fs8 a8 b8 d8
  | fs1
  | r8 f16 g16 f8 c16 d16 c8 f,16 g16 f8 c16 d16
  | c1

  | a8 d'8 cs8 b8 cs8 b8 a8 e8
  | g,4 d'8 b'8 ~ b8 d,8 g,4
  | a8 d'8 cs8 b8 cs8 b8 a8 e8
  | g4 d'8 b8 ~ b8 d,8 g,4

  | d'8 a8 d8 e8 fs8 a8 b8 d8
  | fs1
  | e8 e8 e8 fs8 e4 e8 fs8
  | e8 d8 cs4 ~ cs2

  | e8 e8 e8 fs8 e4 e8 fs8
  | e8 d8 cs8 e,8 a8 e8 a,8 e8
  | a4 r8 e'8 fs8 a8 e'8 cs8 ~
  | cs8 a4 b8 ~ b8 e,8 fs8 r8

  | g,4 d'8 e8 ~ e8 a8 g8 fs8 ~
  | fs8 d4 cs'8 ~ cs8 b8 a8 r8
  | fs,4 r8 cs'8 e8 fs4 b8 ~
  | b8 a4 fs8 ~ fs8 e8 cs8 r8

  | f,4 c'8 d8 f8 c'8 bf8 a8
  | g8 a8 f8 g8 c,8 d8 g,8 r8
  | a2 a'4 e8 a8 ~
  | a4. e8 a8 e8 a,8 r8

  | g2 g'8 g8 d8 g8 ~
  | g8 d4 g,8 ~ g8 g8 d'8 g,8
  | fs'4 e4 b'4 a4
  | fs'4 e4 cs4 a4

  | g4 f4 c'4 bf4
  | f'4 e4 f4 g4

  \repeat volta 2 {
    | \ottava #1
      a8 g8 fs8 g8 fs8 e4 a,8
    | a'8 g8 fs8 g8 fs8 e4 g,8
    | a'8 g8 fs8 g8 fs8 e4 g,8
    | a'8 g8 fs8 g8 fs8 e4 fs,8

    | a'8 g8 fs8 g8 fs8 e4 fs,8
    | a'8 g8 fs8 g8 fs8 e4 f,8
    | a'8 g8 f8 g8 f8 e4 f,8
    | a'8 g8 f8 e8 f8 e8 f8 g8
      \ottava #0
  }

  | <a,, cs''>1 ~
  | <a cs''>1

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
