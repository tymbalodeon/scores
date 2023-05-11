\version "2.25.4"

\include "settings.ily"

\header {
  title = "Awake"
  composer = "Ashley Cubbler"
  arranger = "Ben Rosen, bass"
}

music = \relative g, {
  \key g \major
  \time 4/4
  \clef "bass"

  \repeat volta 2 {
    | g8. g16 ~ g g g8 ~ g16 g8 g16 g e f fs
  }
  | g8. g16 ~ g16 e a8 ~ a bf8 ~ bf16 c8.
  | c16 ( d8 ) d16 ~ d a e'8 ~ e f4 g8

  | g,8. g16 ~ g e g8 r16 c d e f e d c
  | g8. g16 ~ g e g8 r16 c d e f d e d
  | g,8. g16 ~ g e g8 r16 c d e f e d c

  | g8. g16 ~ g8 g' ~ g16 g8 d16 g4

  | g,8. g16 ~ g e g8 r16 c d e f e d c
  | g8. g16 ~ g e g8 r16 c d e f d e d
  | g,8. g16 ~ g e g8 r16 c d e bf' d, a' g
  | f8 f16 e ~ e e16 d8 d16 c8 c16 bf c bf8

  \repeat volta 2 {
    | g8. g16 ~ g g g'8 r16 g,8 g16 g' e, f fs
  }
  | g8. g16 ~ g16 e a8 ~ a bf8 ~ bf16 c8.
  | c16 ( d8 ) d16 ~ d a e'8 ~ e f4 f'16 fs

  \repeat volta 3 {
    | g16 d, c' cs d f d8 r16 g,8 g16

    \alternative {

      \volta 1 {
        g'16 g, f' fs
      }

      \volta 2 {
        g16 d g,8
      }
    }
  }


  | g,8. g16 ~ g g g8 ~ g16 g8 e16 g e g8
  | c8. c16 ~ c c c8 ~ c16 c8. d16 e g a
  | b16 b b e, ~ e e b'16 b b e,8 e16 b' a, d8
  | c8. c16 ~ c c c8 ~ c d16 e g a b d

  | e16 e e d ~ d d c c c b8 d,16 a' b a d,
  | d16 d d d ~ d d d d d d8 d16 d a a' b
  | c16 c c b ~ b b a a a b8 a,16 a'8 g
  | f16 f f f ~ f8 f16 f f f8 c16 f c f, fs
  | g16 g g g ~ g e g g g g8 e16 g8 g

  | R1 * 5
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
