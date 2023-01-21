\version "2.24.0"

\include "settings.ily"

\header {
  title = "Valeria"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
  \key af \major
  \clef "bass"

  R1 * 2
  r2 r4 \acciaccatura { df8  } ef4
  af1 ~
  af2 ~ af4 ef4
  df1 ~
  df2 ~ df4 \acciaccatura { df8  } ef4
  af,1
  af'1
  c,2. c4
  bf1
  f'2 f,4 g4
  af2 af4 c4
  df2 ef4 f8 g8
  af2 ~ af4. ef8
  <af ef'>1 ~ ~
  <af ef'>2 g8 af8 bf8 c8
  af2. ef4
  af,1 ~
  af4 af4 bf4 c4
  df2. af4
  df2. \acciaccatura { df8  } ef4
  af2. ef4
  af2. ef4
  df2. af4
  df2. \acciaccatura { df8  } ef4
  af,2 af'4 ef4
  af2. af4
  c,2. c4
  bf2 ~ bf4. bf8
  f'2 f,4 g4
  af2 af4 c4
  df2 ef4 f8 g8
  af2 ~ af4. ef8
  <af ef'>1 ~ ~
  <af ef'>2 g8 af8 bf8 c8
  af2. ef4
  <af ef'>2 g8 af8 bf8 c8
  af2 af4 ef4
  af,4 af4 bf4 c4
  df2 df4 af4
  df2 df4 \acciaccatura { df8  } ef4
  af2 af4 ef4
  af2 af4 ef4
  df2 df4 af4
  df2 df4 \acciaccatura { df8 } ef4
  af,2 af'4 ef4
  af2 af4 ef4
  c4. c8 c2
  bf4. bf8 bf4. bf8
  f'2 f,4 g4
  af2 af4 c4
  df4 ~ df8. df16 df8 df8. df16 df8
  c4 ~ c8. c16 c8 c8. c16 c8
  bf2. bf4
  df'4 c4 bf4 f4

  \repeat volta 2 {
    gf,1 _ "Play 5 times"
    f2. f4
    af1 ~
    af1
  }
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \music
  }
}
