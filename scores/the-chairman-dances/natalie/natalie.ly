\version "2.24.0"

\include "settings.ily"

\header {
  title = "Natalie"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative c'' {
  \clef "bass"
  \key b \major

  | R1 * 6

  \time 2/4

  | R2

  \time 4/4

  | R1 * 5

  | << {

    <gs as>1 \trill

  } \\ {

    e,,2. e4

  } >>

  | fs2. as4

  | \ottava #1
    ds''2 cs
  | b1 ~
  | b4 gs fs gs
    \ottava #0

  \time 2/4

  | as2 ~

  \time 4/4

  | <cs, as'>1 ~
  | <fs, cs' as'>2. fs,4
  | \ottava #1
    ds'''2 cs4 ~ cs16 ds cs8
  | b2 as8. fs16 ~ fs8 ds ~
  | ds2 ds4 e
  | fs1
    \ottava #0
  | b,,1

  \key e \major

  | << {

      e'2 b'8. a16 ~ a8 gs

    } \\ {

      a,,1

    } >>
  | <b fs'>1
  | << {

      e'2 cs'8. b16 ~ b8 a

    } \\ {

      a,,1

    } >>
  | <b fs'>1
  | << {

      e'2 gs8. a16 ~ a8 gs

    } \\ {

      a,,1

    } >>
  | <b fs'>1
  | << {

    e'2 \acciaccatura { cs'8 ( } ds8. ) cs16 ~ cs8 b

    } \\ {

      a,,1

    } >>
  | <b fs'>1 ~
  | <b fs'>1

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
