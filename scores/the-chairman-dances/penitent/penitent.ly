\version "2.24.0"

\include "settings.ily"

\header {
  title = "Penitent"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative c' {
  \clef "bass"
  \time 9/16

  | R1 * 18/16

  \repeat volta 2 {
    | e4. f8. ~
    | f4. d8.
    | e4. f8. ~
    | f4. d8.

    | e4. ~ e8. ~
    | e4. d8.
    | c4. ~ c8. ~

    \alternative {
      \volta 1 {
        | c4. ~ c8.
      }

      \volta 2 {
        | c4.  a8. \glissando
      }
    }
  }

  | f,4. ~ f8. ~
  | f4. ~ f8.
  | f4. ~ f8. ~
  | f4. f8.

  | c'4. ~ c8. ~
  | c4. ~ c8.
  | c,4. ~ c8. ~
  | c4. c8.

  | f4. ~ f8. ~
  | f4. c8.
  | f4. ~ f8. ~
  | f4. c8.

  | c'4. ~ c8. ~
  | c4. ~ c8.
  | c,4. ~ c8. ~
  | c4. ~ c8.

  \repeat volta 2 {

    | a''8. ~ a8 f16 ~ f8. c' ~ c8 a16 ~ a8.
    | e'8. ~ e8 c16 ~ c8. g' ~ g8 e16 ~ e8.

    \ottava #1

    | b'8. ~ b8 g16 ~ g8. d' ~ d8 a16 ~ a8.

    \ottava #0

    | g8. ~ g8 e16 ~ e8. d ~ d8 c,,16 ~ c8.
  }

  \repeat volta 2 {

    | a''8. ~ a8 f16 ~ f8 a,16 c'8. ~ c8 a16 ~ a8 a,16
    | e''8. ~ e8 c16 ~ c8 a,16 g''8. ~ g8 e16 ~ e8 a,,16


    | \ottava #1
      b''8. ~ b8 g16 ~ g8
      \ottava #0
      c,,,16
      \ottava #1
      d'''8. ~ d8 a16 ~ a8
      \ottava #0
      c,,,16
    | \ottava #1
      g'''8. ~  g8 e16 ~  e8
      \ottava #0
      c,,16
      \ottava #1
      d''8. ~  d8 c16 ~  c8
      \ottava #0
      c,,16
  }

  | f4. ~ f8. ~
  | f4. c8.
  | f4. ~ f8. ~
  | f4. c8.

  | c'4. ~ c8. ~
  | c4. ~ c8.
  | c,4. ~ c8. ~
  | c4. ~ c8.

  \repeat volta 2 {
    | f4. ~ f8 c16
    | c''8 d16 ~ d8 a16 e'8 c,,16

    | f4. ~ f8 c16
    | g'8 a16 d,8. e

    \repeat unfold 2 {
      | c'4. ~ c8 c,16
      | e''8. ~ e8 c16 ~ c8.
    }
  }

  | f,,4. e'8.
  | f4. a8.
  | \tuplet 4/3 { c8. d e f }

  \ottava #1

  | \tuplet 4/3 { g8. a b c }
  | e4. ~ e8.

  \ottava #0

  | R1 * 27/16

  | r8. a,,, c

  \key d \minor

  | d4. ~ d8.
  | e4. ~ e8.
  | f4. ~ f8.
  | f8. g a

  | bf4. ~ bf8 f16
  | \acciaccatura { bf8 } c8. bf8 a16 bf8.
  | g4.
    \ottava #1
    \acciaccatura { a'8 } bf8
  | a16 g8 d16 bf8 a16 g8.
    \ottava #0

  | d4. ~ d8.
  | e4. ~ e8.
  | f4. c8.
  | f8. a c

  | d4. ~ d8. ~
  | d8 c16 d8 e16 f8 g16
  | \ottava #1
    a8 ( bf16 a8 ) f16 g8 ( af16
  | g8 ) f16 d8
    \ottava #0
    a,16 c8 a16

  | d4. \acciaccatura { c'8 } d8.
  | c8. ~ c8 d16 c8.
  | a4. \acciaccatura { g16 } a8.
  | c8. d g,

  | f4. a,8.
  | bf8. c d
  | e8. f g
  | a8. bf c8 c,16

  % \tuplet 3/2  {
  %   d8 f'16 ~ }
  % f8 ~ \tuplet 3/2 {
  %   f8 d,16 }
  % \tuplet 3/2  {
  %   e8 g'16 ~ }
  % g8 ~ \tuplet 3/2 {
  %   g8 e,16 }

  % \tuplet 3/2  {
  %   f8 a'16 ~ }
  % a8 ~ \tuplet 3/2 {
  %   a8 f,16 }
  % \tuplet 3/2  {
  %   a'8 g16 }
  % \tuplet 3/2  {
  %   f8 e16 }
  % d8
  % bf8 a'4 bf,8 a'8 bf,8
  % g8 a8 bf8 a8 g8 f8
  % d,8 d8 \tuplet 3/2 {
  %   d8 c16 }
  % e8 e8 \tuplet 3/2 {
  %   e8 c16 }

  % f8 f8 \tuplet 3/2 {
  %   f8 c16 }
  % f8 g8 a8
  % bf8 d8 f8 d''8 c8 bf8
  % a8 f8 d8 c8 bf8 a8
  % d,,8 a'8 d8 e,8 e'8 c8
  % f,8 a'8 g8 f8 e8 c8
  % bf8 d'4 bf,8 d'8 bf,8
  % g8 a8 bf8 a8 g8 f8
  % d8 d8 \tuplet 3/2 {
  %   d8 c16 }
  % e8 e8 \tuplet 3/2 {
  %   e8 c16 }

  % f8 f8 \tuplet 3/2 {
  %   f8 c16 }
  % f8 g8 a8
  % bf8 d8 f8 a8 bf8 c8
  % g8 a8 bf8 a8 g8 f8
  % d,8 d''8 c8 e,,8 e''8 c8
  % f,,8 a''8 g8 f8 e8 c8
  % bf,8 f'8 bf8 c'8 bf8 a8
  % f8 ( g8 ) c,8 ( d8 ) <e c'>4
  % <e c'>2.

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
