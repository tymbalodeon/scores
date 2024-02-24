\version "2.25.13"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Sixteen Too"
  subtitle = "Monday Appreciation Society"
  composer = "Mark Rybaltowski"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
  \key g \major
  \time 4/4
  \clef "bass"

  | R1 * 4

  | g4 g4 ~ g8 d' ( e ) g ~
  | g8 e4 c8 ~ c ( d ) g4
  | g,4 g4 ~ g8 d' ( e ) g ~
  | g8 e4 a,8 ~ a b ( c4 )

  | g4 g4 ~ g8 d' ( e ) g ~
  | g8 e4 c8 ~ c ( d ) g4
  | g,4 g4 ~ g8 d' ( e ) g ~
  | g8 e4 a,8 ~ a g e4

  | g4 g d'8 ( e ) g b ~
  | b8 a4 a8 ~ a ( g ) e4
  | g,4 g d'8 ( e ) g e' ~
  | e8 b4 a8 ~ a ( g ) e4

  | g,4 g d'8 ( e ) g b ~
  | b8 a4 a8 ~ a ( g ) e d' ~
  | d8 c4 b8 ~ b a ( g ) e ~
  | e8 g ( a ) c, ~ c g' g,4

  | a4 a ~ a8 b ( c ) g ~
  | g8 d' g d ~ d a' d4
  | a,4 a ~ a8 e fs g ~
  | g8 b c d ~ d a d4

  | a4 b c8 d ( e ) g ~
  | g8 a ( b ) a ~ a g fs d
  | a'4 b c8 b ( a ) a,
  | d
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
