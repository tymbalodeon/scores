\version "2.25.11"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Zippers"
  composer = "Ashley Cubbler (Tomo Choco)"
  arranger = "Ben Rosen, bass"
}

music = \relative af {
  \key ef \major
  \time 6/8
  \clef "bass"

  | R2. * 7
  | r4. r4 r16 ef

  | af4 ~ af16 ef ef'8 d bf
  | ef,4. bf'4 ~ bf16 ef,
  | af4 ~ af16 ef ef'8 d bf
  | f4. c'16 d ~ d8. ef,16

  | af4 ~ af16 ef ef'8 d bf
  | ef,4. bf'
  | c,4. g'
  | c,4. g'4 ~ g16 ef

  | af4 ~ af16 ef ef'8 d bf
  | ef,4. bf'4 ~ bf16 ef,
  | af4 ~ af16 ef ef'8 d bf
  | f4. a8. c

  | af4 ~ af16 ef ef'8 d bf
  | ef,4. bf'
  | c,4. g'
  | c,4. g'

  | af,2.
  | g2.
  | af2.
  | f2.

  | af2.
  | ef'2.
  | c'
  | r4. r4 r16 ef,

  | af4 ~ af16 ef ef'8 d bf
  | ef,4. bf'4 ~ bf16 ef,
  | af4 ~ af16 ef ef'8 d bf
  | f8. f, c' d

  | af4. g''8 f ef
  | d8. bf ef, g,
  | c2.
  | R2.

  | ef2.
  | af,2.
  | g2.
  | af2.

  | bf4. c8. ef
  | f4. f,
  | af4. ~ af4 af8
  | af'2 ~ af8. ef16

  | af4 ~ af16 ef ef'8 d c
  | bf8. g f8 ef d
  | <c g'>8. c <c g'> \tuplet 4/3 { c8 g }
  | \tuplet 4/3 { c8 d ef f }
    \tuplet 4/3 { ef d c bf }

  | af4. af'
  | g,4. bf'
  | af,4. c'
  | f,,4. f'8. ef16 c8

  | af4. af'
  | bf,4. g'
  | c,2.
  | R2.

  | R2. * 6

  | f,2. ~
  | f2.

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
