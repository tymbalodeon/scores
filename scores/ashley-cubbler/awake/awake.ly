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

  \repeat unfold 2 {
    | g8. g16 ~ g g g8 r16 g8 g16 g e f fs
  }
  | g4. a8 ~ a bf4 c8
  | d4. e8 ~ e f4 g8

  | g,8. g16 ~ g e g8 r16 c d e f e d c
  | g8. g16 ~ g e g8 r16 c d e f d e d
  | g,8. g16 ~ g8. g'16 ~ g8 g g4
  \repeat unfold 2 {
    | g,8. g16 ~ g e g8 r16 c d e f e d c
    | g8. g16 ~ g e g8 r16 c d e f d e d
  }

  \repeat unfold 2 {
    | g,8. g16 ~ g g g'8 r16 g,8 g16 g' e, f fs
  }
  | g4. a8 ~ a bf4 c8
  | d4. e8 ~ e f4 g8
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
