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
  \time 3/8

  r8 s4

  \repeat volta 2 {
    R4.
    \time 5/8  R8 * 5
    \time 3/8  R4.
    \time 6/8  R2.
    \time 3/8  R8 * 9
    \time 6/8  R2.
  }

  R2.

  \time 3/8

  <df f'>4.

  \time 5/8  <af' c>4. ~ ~ <af c>4
  \time 3/8  <ff cf'>4.
  \time 6/8  <gf df'>4. ~ ~ <gf df'>4.
  \time 3/8  f'8 ~ \tuplet 3/2 {
    f8 gf16 }
  f8
  \time 5/8  c4. ~ c8 bf8
  \time 3/8  \tuplet 3/2 {
    af8 ff16 ~ }
  \tuplet 3/2  {
    ff8 cf16 ~ }
  cf8
  \time 6/8  df2.
  \time 3/8  f8 \tuplet 3/2 {
    f8 ef16 }
  df8
  gf,8 af8 bf8
  \times 6/4  {
    af16 bf16 df16 ef32 ff,32 }

  \times 3/5  {
    ef''8 ff,,8 cf'''8 ef,8 ff,,8 }

  \times 3/5  {
    ef''8 ff2 }

  f8 ~ \tuplet 3/2 {
    f8 gf16 }
  f8
  \time 5/8  c4. \tuplet 3/2 {
    af'8 c,16 }
  bf8
  \time 3/8  \tuplet 3/2 {
    af8 ff'16 }
  \tuplet 3/2  {
    af,8 ff16 }
  cf8
  \time 6/8  df'8 gf,,4 ~ -+ _\markup{ \tiny {R.H.} } gf4.
  \time 3/8  f'8 \tuplet 3/2 {
    f8 ef16 }
  df8
  gf,8 af8 bf8
  \once \omit TupletBracket
  \times 6/4  {
    af16 bf16 df16 ef32 ff,32 }

  \times 3/5  {
    ef''8 ff,,8 cf'''8 ef,8 ff,,8 }

  \times 3/5  {
    ef''8 ff4 af,4 }

  \time 6/8  s1.
  \time 3/8  f8 ~ \tuplet 3/2 {
    f8 gf16 }
  f8
  \time 5/8  c4. c8 bf8
  \time 3/8  af4.
  \time 6/8  bf4. ~ bf8 af8 gf8
  \time 3/8  f4.
  gf8 af8 bf8
  \times 6/4  {
    af16 bf16 df16 ef32 ff,32 }

  \times 3/5  {
    gf''8 ff,,8 ef'''8 gf,8 ff,,8 }

  ef'''4 gf,8
  f,8 ~ \tuplet 3/2 {
    f8 gf16 }
  f8
  \time 5/8  c4 c8 \tuplet 3/2 {
    ef8 c16 }
  bf8
  \time 3/8  ff4 ff8
  \time 6/8  gf4. ~ gf8 gf8 af8
  bf8 ~ \tuplet 3/2 {
    bf8 gf16 ~ }
  gf8 \tuplet 3/2 {
    af'8 bf16 ~ }
  \tuplet 3/2  {
    bf8 gf16 ~ }
  gf8
  \time 3/8  <af df>8 ~ ~ \tuplet 3/2 {
    <af df>8 <af df>16 }
  r8
  \time 5/8  <ef af>4. ~ ~ <ef af>8 <ef af>8
  \time 3/8  <gf, cf ef>8 ~ ~ ~ \tuplet 3/2 {
    <gf cf ef>8 <gf cf ef>16 }
  r8
  \time 6/8  <af df f>4. ~ ~ ~ <af df f>8 af8 gf8
  \time 3/8  f4.
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
  \time 3/8  <gf, cf ef>8 ~ ~ ~ \tuplet 3/2 {
    <gf cf ef>8 <gf cf ef>16 }
  r8
  \time 6/8  <af df f>4. ~ ~ ~ <af df f>4 df8
  \time 3/8  f,4.
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
