\version "2.24.0"

\include "settings.ily"

\header {
  title = "Natalie"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

loco = _\markup \italic "loco"

loco_a = {
  \set Voice.middleCPosition = #(+ 6)
  a,,1 \loco
  \unset Voice.middleCPosition
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

    \ottava #1
    as1 \trill -\markup \italic "(trill A♯ only)"
    \ottava #0

  } \\ {

    \ottava #1
    gs1
    \ottava #0

  } \\ {

    \set Voice.middleCPosition = #(+ 6)
    \stemDown
    e,,2. \loco e4
    \stemNeutral
    \unset Voice.middleCPosition

  } >>

  | fs2. as4

  | \ottava #1
    ds''2 cs
  | b1 ~
  | b4 gs fs gs

  \time 2/4

  | as2 ~

  \time 4/4

  | <cs, as'>1 ~
  | <fs, cs' as'>2.
    \ottava #0
    fs,4 \loco
  | \ottava #1
    ds'''2 cs4 ~ cs16 ds cs8
  | b2 as8. fs16 ~ fs8 ds ~
  | ds2 ds4 e
  | fs1
    \ottava #0
  | b,,1

  \key e \major

  | << {

      \ottava #1
      e'2 b'8. a16 ~ a8 gs
      \ottava #0

    } \\ {

      \loco_a

    } >>
  | <b fs'>1
  | << {

      \ottava #1
      e'2 cs'8. b16 ~ b8 a
      \ottava #0

    } \\ {

      \loco_a

    } >>
  | <b fs'>1
  | << {

      \ottava #1
      e'2 gs8. a16 ~ a8 gs
      \ottava #0

    } \\ {

      \loco_a

    } >>
  | <b fs'>1
  | << {

      \ottava #1
      e'2 \acciaccatura { cs'8 ( } ds8. ) cs16 ~ cs8 b
      \ottava #0

      } \\ {

      \loco_a

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
