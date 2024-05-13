\version "2.25.13"

\include "helpers/settings.ily"

\header {
  title = "Valeria"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
  \key af \major
  \clef "bass"

  | R1 * 3
  | r2 r4 \acciaccatura { df8 } ef4

  | af1 ~
  | af2. ef4
  | df1 ~
  | df2. \acciaccatura { df8 } ef4

  | af,1
  | af'1
  | c,2. c4
  | bf1

  | f'2 f,4 g
  | af2 af4 c
  | df2 ef4 f8 g
  | af2 ~ af4. ef8

  | <af ef'>1 ~
  | <af ef'>2 g8 af bf c
  | af2. ef4

  | af,1 ~
  | af4 af4 bf4 c4
  | df2. af4
  | df2. \acciaccatura { df8 } ef4

  | af2. ef4
  | af2. ef4
  | df2. af4
  | df2. \acciaccatura { df8 } ef4

  | af,2 af'4 ef
  | af2. af4
  | c,2. c4
  | bf2 ~ bf4. bf8

  | f'2 f,4 g
  | af2 af4 c
  | df2 ef4 f8 g
  | af2 ~ af4. ef8

  | <af ef'>1 ~
  | <af ef'>2 g8 af bf c
  | af2. ef4
  | <af ef'>2 g8 af bf c

  | af2 af4 ef
  | af,4 af bf c
  | df2 df4 af
  | df2 df4 \acciaccatura { df8 } ef4

  | af2 af4 ef
  | af2 af4 ef
  | df2 df4 af
  | df2 df4 \acciaccatura { df8 } ef4

  | af,2 af'4 ef
  | af2 af4 ef
  | c4. c8 c2
  | bf4. bf8 bf4. bf8

  | f'2 f,4 g
  | af2 af4 c
  | df4 ~ df8. df16 df8 df8. df16 df8
  | c4 ~ c8. c16 c8 c8. c16 c8

  | bf2. bf4
  | df'4 c bf f

  \repeat volta 2 {
    | gf,1
    | f2. f4
    | af1 ~
    | af1
  }
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \compressMMRests {
      \music
    }
  }
}
