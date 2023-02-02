\version "2.24.0"

\include "settings.ily"

\header {
  title = "Moving In With Dad"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative c' {
    \clef "bass"

    | R1 * 4

    | \ottava #1
      c4 c8 ef'8 ~ ef8 ef8 c,8 ef'8
    | <b, d'>4 b8 d'8 ~ d8 d8 b,8 d'8
    | <bf, df'>4 bf8 df'8 ~ df8 df8 bf,4
      \ottava #0

    | d,4. d'8 ~ d8 a8 d,8 r8

    \time 2/4

    | d'8 a8 df,8 r8

    \time 4/4

    | c4 c8 ef'8 ~ ef8 ef8 c,8 ef'8
    | <b, d'>4 b8 d'8 ~ d8 d8 b,8 d'8
    | <bf, df'>4 bf8 df'8 ~ df8 df8 bf,4
    | a4. d'8 ~ d2 ~

    \time 2/4

    | d2

    \time 4/4

    | r4 c,8 d8 ef8 f8 g8 a8
    | b8 g8 d'8 c8 b8 a8 g8 f8
    | fs8 cs8 as8 cs8 fs,8 gs8 as8 cs8
    | d8 fs8 a8 d,8 fs'8 e8 d8 d,8

    \time 2/4

    | cs'8 b8 a8 a,8

    \time 4/4

    | r4 c8 d8 ef8 f8 g8 a8
    | b8 g8 d'8 c8 b8 \tuplet 3/2 { a16 b16 a16 } g8 f8
    | fs8 cs8 as8 cs8 fs,8 gs8 as8 cs8
    | d8 fs8 a8 d,8 fs'8 e8 d8 d,8

    \time 2/4

    | cs'8 b8 a8 r8

    \time 4/4

    | c4. c8 ~ c8 c8 d8 c8
    | b4. b8 ~ b8 b8 c8 b8
    | bf4. bf8 ~ bf8 e,,8 fs8 e8
    | d'4. d'8 ~ d8 a8 d,8 r8

    \time 2/4

    | d'8 a8 df,8 r8

    \time 4/4

    | c4. c8 ~ c8 c8 d8 c8
    | b4. b8 ~ b8 b8 c8 b8
    | bf4. bf8 ~ bf8 e,8 fs8 e8
    | d'8 fs8 a8 d8 fs2 ~

    \time 2/4

    | fs2

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
