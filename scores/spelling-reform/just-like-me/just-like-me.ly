\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Just Like Me"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c'' {
  \key g \major
  \time 4/4

  \partial 2.
  r2.

  | R1 * 6
  | r2 r4 r8 d ~
  | d c4 b8 ~ b a b4 ~

  | b1 ~
  | b1
  | R1 * 3
  | r8 g16 e' d8 g, e' g, d' g,
  | r8 g d'8 g, e' g, d' g,
  | r8 g d'8 g, e' d g, r

  | r2 g'8 fs d a ~
  | a4 a8 g b d4 g,8 ~
  | g2 g'8 fs d a ~
  | a4 a8 g b d4 b8 ~

  | b2 g'8 fs d a ~
  | a4 a8 g b d4 d8 ~
  | d1
  | c2 b4 e

  | g1 ~
  | g1
  | R1 * 2

  | R1 * 3
  | e,8 ( g4 ) a8 ( b4 ) e,8 ( g )

  | R1 * 10

  | r8 g16 ( b ) b ( d ) ( e8 ~ ) e d4 g,8 ~
  | g4 r8 g16 ( b ) b ( d ) ( e8 ~ ) e d ~
  | d b r8 g16 ( b ) b ( d ) ( e8 ~ ) e d ~
  | d4 r8 g,16 ( b ) b ( d ) ( e8 ~ ) e d ~

  | d g, r8 g16 ( b ) b ( d ) ( e8 ~ ) e d ~
  | d4 r8 g,16 ( b ) b ( d ) ( e8 ~ ) e d ~
  | d b r8 g16 ( b ) b ( d ) ( e8 ~ ) e d ~
  | d4.. e16 ( b'8 ) r16 e,16 ( d'8 ) r

  | R1 * 16

  \repeat volta 4 {
    | d,8 ^\markup \italic "4x" r d r d r d r

    \repeat unfold 3 {
      | d8 r d r d r d r
    }
  }

  | R1 * 9
  | R1 * 4

  \repeat volta 4 {
    | d8 ^\markup \italic "4x" d d d d d d d

    \repeat unfold 3 {
      | d8 d d d d d d d
    }
  }

  | R1 * 9
  | R1 * 4

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
