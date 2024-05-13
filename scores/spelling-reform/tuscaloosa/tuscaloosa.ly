\version "2.25.13"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Tuscaloosa"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

fourTimes = ^\markup \italic "4x"

music = \relative c'' {
  \key a \major
  \time 4/4

  | R1 * 4
  | R1 * 12
  | R1 * 4
  | R1 * 12
  | R1 * 4
  | R1 * 16

  \repeat volta 4 {
    | d'8 -> \fourTimes ( cs ) a d -> ( cs ) a d -> ( cs )
    | a8 d -> ( cs ) a d -> ( cs ) a r
    | cs,4 a'8 cs ~ cs a4.
    | e8 a e b' ~ b a4.
  }

  \repeat volta 4 {
    | <e' b (>8 -> \fourTimes  cs ) e <e b (> -> cs ) e <e b (> -> cs )
    | e8 <e b (> -> cs ) e fs8. e16 ~ e8 r
    | cs,4 a'8 cs ~ cs a4.
    | e8 a e b' ~ b a4.
  }

  | <d,, e' a d>1

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
