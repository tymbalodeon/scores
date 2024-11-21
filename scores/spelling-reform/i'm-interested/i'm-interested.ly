\version "2.25.20"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "I'm Interested"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c'' {
  \key af \major
  \time 2/4

  | R2 * 8 ^\markup \italic "(guitar)"
  | R2 * 15 ^\markup \italic "(verse)"
  | r 4 r8 f \glissando (

  \time 4/4

  | af1 ) ^\markup \italic "(band)"
  | R1 * 7

  | f'1
  | R2 * 6

  | R1 * 3 ^\markup \italic "\"I'm interested...\""
  | r2 r4 r8 f, \glissando (

  \time 2/4

  | af2 ) c
  | cf bf
  | af bf
  | cf bf

  | af ef'
  | cf bf
  | af bf
  | cf  df

  \time 4/4

  | af1
  | bf2 c4 bf
  | af2 ~ af4 r8 af \glissando (
  | bf2 ) c4 bf

  | af2 ~ af4 r8 af \glissando (
  | bf2 ) c4 bf
  | af2 ~ af4 r8 af \glissando (
  | bf2  ~ bf4 ) r8 bf \glissando (

  | c1 )
  | af2 af
  | af2 af
  | af2 af

  | r8 bf16 \glissando ( c ) c ef c8 af2
  | r8 bf16 \glissando ( c ) c ef c8 af2

  | r8 bf16 \glissando ( c ) c ef c8 af2
  | R1

  \repeat volta 2 {
    | af2 r4 f
    | c'2 r4 bf

    | af2 f2
    | af2 f2
  }

  | ef1
  | c2 ~ c4 bf

  | af1 ~
  | af1

  | R1 * 2
  | r2 bf16 ( c ) af'8 ef16 ( f ) c'8
  | R1 * 2

  | c,1
  | ef2 f4 ef
  | c1
  | ef2 f4 ef

  | c1
  | g'1
  | g1
  | af2 af2

  | af2 af2
  | af2 af2

  \repeat volta 2 {
    | r8 bf,16 \glissando ( c ) c ef c8 af2
    | r8 bf16 \glissando ( c ) c ef c8 af2

    | r8 bf16 \glissando ( c ) c ef c8 af2
    | R1
  }

  \time 2/4

  | R2 * 5
  | R2 \fermata

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Guitar"
    \numericTimeSignature
  } {
    \compressMMRests
    \music
  }
}
