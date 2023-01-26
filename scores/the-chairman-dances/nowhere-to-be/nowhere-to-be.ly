\version "2.24.0"

\include "settings.ily"

\header {
  title = "Nowhere To Be"
  composer = "The Chairman Dances"
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

  bf4 ~ \tuplet 3/2 {
    bf4 a'8 }
  c4
  d4 ~ \tuplet 3/2 {
    d4 a,8 }
  c4
  d4 ~ \tuplet 3/2 {
    d4 a'8 }
  \tuplet 3/2  {
    c4 a,8 }

  \tuplet 3/2  {
    f''4 e8 }
  \tuplet 3/2  {
    d4 d,8 }
  \tuplet 3/2  {
    e4 d8 }

  c4 ~ \tuplet 3/2 {
    c4 a8 }
  c4
  d4 ~ \tuplet 3/2 {
    d4 d8 }
  e4
  a,4 ~ \tuplet 3/2 {
    a4 a8 }
  \tuplet 3/2  {
    c4 a8 }

  f4 g4 a4
  bf4 ~ \tuplet 3/2 {
    bf4 a'8 }
  \tuplet 3/2  {
    c4 a8 }

  d4 ~ \tuplet 3/2 {
    d4 a,8 }
  \tuplet 3/2  {
    c4 f8 }

  d4 ~ \tuplet 3/2 {
    d4 a'8 }
  \tuplet 3/2  {
    c4 a,8 }

  \tuplet 3/2  {
    e''4 f8 }
  \tuplet 3/2  {
    e4 c8 }
  d4
  <c, g'>4 ~ ~ \tuplet 3/2 {
    <c g'>4 a8 }
  c4
  d4 ~ \tuplet 3/2 {
    d4 d8 }
  e4
  a,4 ~ \tuplet 3/2 {
    a4 a8 }
  \tuplet 3/2  {
    c4 a8 }

  f4 g4 a4
  bf4 ~ \tuplet 3/2 {
    bf4 a'8 }
  \tuplet 3/2  {
    c4 a8 }

  \tuplet 3/2  {
    d4 a'8 }
  \tuplet 3/2  {
    d,4 a,8 }
  \tuplet 3/2  {
    c4 a8 }

  \tuplet 3/2  {
    d4 d'8 }
  \tuplet 3/2  {
    a4 a8 }
  \tuplet 3/2  {
    c4 a,8 }

  e''8 f8 g8 a8 d,8 e8
  \tuplet 3/2  {
    c4 g'8 }
  \tuplet 3/2  {
    c,4 a8 }
  \tuplet 3/2  {
    c4 a8 }

  d4 \times 2/3 {
    d4 a8 }
  \times 2/3  {
    d4 e8 }

  a,4 \times 2/3 {
    a4 a8 }
  \times 2/3  {
    c4 a8 }

  f,4 g4 a4
  bf4 ~ bf8 d8 f8 bf8
  \times 2/3  {
    d4 c8 ~ }
  \times 2/3  {
    c4 c8 ~ }
  \times 2/3  {
    c4 bf,8 }

  \times 2/3  {
    c'4 a8 ~ }
  \times 2/3  {
    a4 a8 ~ }
  \times 2/3  {
    a4 a,8 }

  \times 2/3  {
    a'4 bf8 }
  \times 2/3  {
    a4 f8 }
  \times 2/3  {
    d4 e,8 }

  e''4 \times 2/3 {
    e4 d8 ~ }
  \times 2/3  {
    d4 d8 }

  c4 \times 2/3 {
    c4 a8 ~ }
  \times 2/3  {
    a4 a8 }

  g4 \times 2/3 {
    g4 e8 ~ }
  \times 2/3  {
    e4 e8 }

  d4 g,4 a4
  bf4 ~ bf8 d'8 f8 bf8
  \times 2/3  {
    d4 c8 ~ }
  \times 2/3  {
    c4 c8 ~ }
  \times 2/3  {
    c4 bf,8 }

  \times 2/3  {
    c'4 a8 ~ }
  \times 2/3  {
    a4 a8 ~ }
  \times 2/3  {
    a4 a,,8 }

  \times 2/3  {
    a''4 bf8 }
  \times 2/3  {
    a4 f8 }
  \times 2/3  {
    d4 e,,8 }

  a''4 \times 2/3 {
    a4 g8 ~ }
  \times 2/3  {
    g4 g8 }

  e4 \times 2/3 {
    g4 c,8 ~ }
  \times 2/3  {
    c4 c8 }

  a4 \times 2/3 {
    c4 e,8 ~ }
  \times 2/3  {
    e4 e8 }

  d4 g,4 a4
  bf4 ~ \times 2/3 {
    bf4 f'8 }
  \times 2/3  {
    c'4 g8 }

  bf4 \times 2/3 {
    g'4 d8 }
  f4
  \times 2/3  {
    c'4 g8 }
  bf4 \times 2/3 {
    a4 bf8 }

  \times 2/3  {
    a4 f8 }
  \times 2/3  {
    d4 f8 }
  \times 2/3  {
    bf,4 e,,8 }

  f4 ~ \times 2/3 {
    f4 c'8 }
  \times 2/3  {
    g'4 d8 }

  f4 \times 2/3 {
    d'4 a8 }
  c4
  \once \omit TupletBracket
  \times 6/4  {
    a8 f8 c'8 a8 }

  \once \omit TupletBracket
  \times 6/4  {
    e'8 c8 g'8 e8 }

  bf,4 ~ \times 2/3 {
    bf4 f'8 }
  \times 2/3  {
    c'4 g8 }

  bf4 \times 2/3 {
    g'4 d8 }
  f4
  \times 2/3  {
    c'4 g8 }
  bf4 \times 2/3 {
    a4 bf8 }

  \times 2/3  {
    a4 f8 }
  \times 2/3  {
    d4 f8 }
  \times 2/3  {
    bf,4 e,,8 }

  f4 ~ \times 2/3 {
    f4 c'8 }
  \times 2/3  {
    g'4 d8 }

  f4 \times 2/3 {
    d'4 a8 }
  c4
  \once \omit TupletBracket
  \times 6/4  {
    a8 f8 c'8 a8 }

  \once \omit TupletBracket
  \times 6/4  {
    e'8 c8 g'8 e8 }

  bf,4 ~ \times 2/3 {
    bf4 f'8 }
  \times 2/3  {
    c'4 g8 }

  bf4 \times 2/3 {
    g'4 d8 }
  f4
  \times 2/3  {
    c'4 g8 }
  bf4 \times 2/3 {
    d4 c8 }

  \times 2/3  {
    a4 bf8 }
  \times 2/3  {
    a4 f8 }
  \times 2/3  {
    d4 e,,8 }

  f2 \once \omit TupletBracket
  \times 2/3  {
    a''8 bf8 c8 }

  \once \omit TupletBracket
  \times 2/3  {
    a8 f8 g8 }
  \once \omit TupletBracket
  \times 2/3  {
    c,8 d8 e8 }
  \once \omit TupletBracket
  \times 2/3  {
    a,8 bf8 c8 }

  e,2.

  R2.

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
