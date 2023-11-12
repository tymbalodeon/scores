\version "2.25.10"

\include "helpers/settings.ily"

\header {
  title = "Nowhere To Be"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
  \clef "bass"
  \key f \major
  \time 9/16

  | R1 * 351/16

  | c4. ~ c8.
  | g4. ~ g8.
  | a4. ~ a8.
  | f4. ~ f8.

  | c'4. ~ c8.
  | g4. ~ g8.
  | a4. ~ a8.
  | f8. a'8 g16 f8.

  | e8. e8 d16 c8.
  | g4. ~ g8.
  | a4. ~ a8.
  | f4. ~ f8.

  | c'4. ~ c8.
  | g4. ~ g8.
  | a4. ~ a8.
  | f4. ~ f8.

  | a4. a8.
  | g8. e f ~
  | <f f'>4. f8.

  | a4. a8.
  | c8. d e
  | f4. ~ f8. ~
  | <f, f'>4. ~ <f f'>8.

  | R1 * 108/16

  | bf8. ~ bf8 a'16 c8.
  | d8. ~ d8 a,16 c8.
  | d8. ~ d8 a'16 c8 a,16
  | f''8 e16 d8 d,16 e8 d16

  | c8. ~ c8 a16 c8.
  | d8. ~ d8 d16 e8.
  | a,8. ~ a8 a16 c8 a16
  | f8. g a

  | bf8. ~  bf8 a'16 c8 a16
  | d8. ~ d8 a,16 c8 f16
  | d8. ~ d8 a'16 c8 a,16
  | e''8 f16 e8 c16 d8.

  | <c, g'>8. ~ <c g'>8 a16 c8.
  | d8. ~ d8 d16 e8.
  | a,8. ~ a8 a16 c8 a16
  | f8. g a

  | bf8. ~ bf8 a'16 c8 a16
  | d8 a'16 d,8 a,16 c8 a16
  | d8 d'16 a8 a16 c8 a,16
  | e''16. f g a d, e

  | c8 g'16 c,8 a16 c8 a16
  | d8. d8 a16 d8 e16
  | a,8. a8 a16 c8 a16
  | f,8. g a

  | bf8. ~ bf16. d f bf
  | d8 c16 ~ c8 c16 ~ c8 bf,16
  | c'8 a16 ~ a8 a16 ~ a8 a,16
  | a'8 bf16 a8 f16 d8 e,16

  | e''8. e8 d16 ~ d8 d16
  | c8. c8 a16 ~ a8 a16
  | g8. g8 e16 ~ e8 e16
  | d8. g, a

  | bf8. ~ bf16. d' f bf
  | d8 c16 ~ c8 c16 ~ c8 bf,16
  | c'8 a16 ~ a8 a16 ~ a8 a,,16
  | a''8 bf16 a8 f16 d8 e,,16

  | a''8. a8 g16 ~ g8 g16
  | e8. g8 c,16 ~ c8 c16
  | a8.  c8 e,16 ~ e8 e16
  | d8. g, a

  | bf8. ~ bf8 f'16 c'8 g16
  | bf8. g'8 d16 f8.
  | c'8 g16 bf8. a8 bf16
  | a8 f16 d8 f16 bf,8 e,,16

  | f8. ~ f8 c'16 g'8 d16
  | f8. d'8 a16 c8.
  | \tuplet 4/3 { a8. f c' a }
  | \tuplet 4/3 { e'8. c g' e }

  | bf,8. ~ bf8 f'16 c'8 g16
  | bf8. g'8 d16 f8.
  | c'8 g16 bf8. a8 bf16
  | a8 f16 d8 f16 bf,8 e,,16

  | f8. ~ f8 c'16 g'8 d16
  | f8. d'8 a16 c8.
  | \tuplet 4/3 { a8. f c' a }
  | \tuplet 4/3 { e'8. c g' e }

  | bf,8. ~ bf8 f'16 c'8 g16
  | bf8. g'8 d16 f8.
  | c'8 g16 bf8. d8 c16
  | a8 bf16 a8 f16 d8 e,,16

  | f8. a''16. bf c a
  | f16. g c, d e a,
  | bf16. c e,4.
  | e4. ~ e8.

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
