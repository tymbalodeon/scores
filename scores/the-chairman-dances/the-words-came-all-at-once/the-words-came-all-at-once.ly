\version "2.25.4"

\include "settings.ily"

\header {
  title = "The Words Came All At Once"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative g' {
  \clef "bass"
  \time 2/2

  | R1 * 8

  | \ottava #1
    g4 a b4. g8 ~
  | g2 ~ g4. g8 ~
  | g1. \glissando \parenthesize a,2
    \ottava #0

  | R1 * 4

  | \ottava #1
    b'4 c4 d4. b8 ~
  | b2 ~ b4. b8 ~
  | b1. \glissando \parenthesize a,2
  | g'4 a4 b4. g8 ~

  | g2 ~ g4. g8 ~
  | g1. \glissando g,4
    \ottava #0
    d,4 \glissando

  | g2 g'2 ~
  | g8 g, c ( d ) d f g f, ~
  | f2 ~ <f a'>2  ~
  | <f a'>2 ~ <f a'>8 d f ( d )

  | g2 g'2 ~
  | g8 g, c ( d ) d f g f, ~
  | f8 f4. a'2 ~
  | a2 ~ a8 d,, f ( d )

  | g2 g'2 ~
  | g8 g, c ( d ) d f g f, ~
  | f8 f4. a'2 ~
  | a2 ~ a8 d,, f ( d )

  | g2 g'2 ~
  | g8 g, c ( d ) d f g f, ~
  | f2 a'2 ~
  | a1

  | g,1 ~
  | g2. g4
  | d1 ~
  | d2. d4

  | g1 ~
  | g2. g4
  | d1 ~
  | d2 ~ d8 d f ( d )

  \repeat volta 2 {
    | g8 g' g a g d, g a e'' a,, e''8 d e, d' e, a,
    | a'8 d,, a'' a, a' a b c r d,, r d g fs f e
    | g g' g a g d, g a e'' a,, e'' d e, d' e, a,
    | a' d,, a'' a, a' a b g8 g' f e f e d c b
  }

  | a4 d,,2. ~
  | d1

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
