\version "2.24.0"

\include "settings.ily"

\header {
  title = "The Words Came All At Once"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative c'' {
  \clef "bass"

  | R1 * 8

  | g8 a8 b8. g16 ~ g4 ~ g8. g16 ~
  | g2. \glissando a,4

  | R1 * 4

  | b'8 c8 d8. b16 ~ b4 ~ b8. b16 ~
  | b2. \glissando a,4
  | g'8 a8 b8. g16 ~ g4 ~ g8. g16 ~
  | g2. \glissando g8 d,8 \glissando

  | g4 g'4 ~ g16 g, c ( d ) d f g f, ~
  | f4 ~ <f a'>4 ~ ~ <f a'>4 ~ ~ <f a'>16 d f ( d )
  | g4 g'4 ~ g16 g, c ( d ) d f g f, ~
  | f16 f8. a'4 ~ a4 ~ a16 d,, f ( d )

  | g4 g'4 ~ g16 g, c ( d ) d f g f, ~
  | f16 f8. a'4 ~ a4 ~ a16 d,, f ( d )
  | g4 g'4 ~ g16 g, c ( d ) d f g f, ~
  | f4 a'2.

  | g,2. ~ g8 g8
  | d2. ~ d8 d8
  | g2. ~ g8 g8
  | d2. ~ d16 d f ( d )

  \repeat volta 2 {
    | g16 g' g a g d, g a e'' a,, e''16 d e, d' e, a,
    | a'16 d,, a'' a, a' a b c r d,, r d g fs f e
    | g g' g a g d, g a e'' a,, e'' d e, d' e, a,
    | a' d,, a'' a, a' a b g16 g' f e f e d c b
  }

  | a8 d,,8 ~ d2. ~
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
