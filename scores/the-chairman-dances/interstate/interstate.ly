\version "2.24.0"

\include "settings.ily"

\header {
  title = "Interstate"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative df {
  \clef "bass"
  \tempo 4 = 60
  \key df \major
  \time 9/16

  \partial 16.
  r16.

  \repeat volta 2 {
    | R1 * 18/16

    \time 6/16

    | R1 * 6/16

    \time 9/16

    | R1 * 72/16
  }

  | R1 * 18/16

  \time 9/16

  | <df f'>4. ~ <df f'>8.
  | <af' c>4. ~ <af c>8. ~

  \time 6/16

  | <af c>4.

  \time 9/16

  | <ff cf'>4. ~ <ff cf'>8.
  | <gf df'>4. ~ <gf df'>8. ~
  | <gf df'>4. ~ <gf df'>8.

  \time 9/16

  | f'8. ~ f8 gf16 f8.
  | c4. ~ c8. ~

  \time 6/16

  | c8. bf

  \time 9/16

  | af8 ff16 ~ ff8 cf16 ~ cf8.

  \time 6/16

  | df4.

  \time 9/16

  | f8. f8 ef16 df8.
  | gf,8. af bf
  | \tuplet 4/3 { af8. bf df ef8 ff,16 }
  | \tuplet 5/3 { ef''8. ff,, cf''' ef, ff,, }

  | \tuplet 5/3  { ef''8. ff2. }
  | f8. ~ f8 gf16  f8.
  | c4. ~ c8.

  \time 6/16

  | af'8 c,16 bf8.

  \time 9/16

  | af8 ff'16 af,8 ff16 cf8.
  | df'8. gf,,4.~ -+
  | gf4. ~ gf8.
  | f'8. f8 ef16 df8.

  | gf,8. af bf
  | \tuplet 4/3 { af8. bf df ef8 ff,16 }
  | \tuplet 5/3 { ef''8. ff,, cf''' ef, ff,, }
  | \tuplet 5/3 { ef''8. ff4. af,4. }

  | f8. ~ f8 gf16 f8.
  | c4. ~ c8. ~

  \time 6/16

  | c8. bf

  \time 9/16

  | af4. ~ af8.
  | bf4. ~ bf8. ~
  | bf8. af8. gf
  | f4. ~ f8.

  | gf8. af bf
  | \tuplet 4/3 { af8. bf df ef8 ff,16 }
  | \tuplet 5/3 { gf''8. ff,, ef''' gf, ff,, }

  ef'''4 gf,8
  f,8 ~ \tuplet 3/2 {
    f8 gf16 }
  f8
  \time 5/8  c4 c8 \tuplet 3/2 {
    ef8 c16 }
  bf8
  \time 9/16  ff4 ff8
  \time 6/16  gf4. ~ gf8 gf8 af8
  bf8 ~ \tuplet 3/2 {
    bf8 gf16 ~ }
  gf8 \tuplet 3/2 {
    af'8 bf16 ~ }
  \tuplet 3/2  {
    bf8 gf16 ~ }
  gf8
  \time 9/16  <af df>8 ~ ~ \tuplet 3/2 {
    <af df>8 <af df>16 }
  r8
  \time 5/8  <ef af>4. ~ ~ <ef af>8 <ef af>8
  \time 9/16  <gf, cf ef>8 ~ ~ ~ \tuplet 3/2 {
    <gf cf ef>8 <gf cf ef>16 }
  r8
  \time 6/16  <af df f>4. ~ ~ ~ <af df f>8 af8 gf8
  \time 9/16  f4.
  gf8 af8 bf8
  \times 6/4  {
    af16 bf16 df16 ef32 ff,32 }

  \times 3/5  {
    gf''8 ff,,8 ef'''8 gf,8 ff,,8 }

  \tuplet 3/2  {
    ef'''8 df16 }
  cf8 \tuplet 3/2 {
    \acciaccatura { bf8*3/2 ( } cf8 ) bf16 }

  \tuplet 3/2  {
    af8 df,16 }
  af8 <af df>8
  \time 5/8  <ef af>4. <ef af>8 <ef af>8
  \time 9/16  <gf, cf ef>8 ~ ~ ~ \tuplet 3/2 {
    <gf cf ef>8 <gf cf ef>16 }
  r8
  \time 6/16  <af df f>4. ~ ~ ~ <af df f>4 df8
  \time 9/16  f,4.
  gf8 af8 bf8
  af8 af'4
  \times 6/4  {
    af,16 bf16 df16 ef32 ff,32 }

  \times 3/5  {
    ef''8 ff,,8 cf'''4 ef8 ~ }

  ef4.

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
