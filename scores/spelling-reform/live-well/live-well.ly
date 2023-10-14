\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Live Well"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c'' {
  \key d \major
  \time 4/4

  | R1 * 4
  | R1 * 16
  | R1 * 16

  \repeat volta 2 {
    | a8 d a e' ~ e d4 d8
    | b8 d b fs' ~ fs d4 d8

    \alternative {
      \volta 1 {
        | a8 d a e' ~ e d4 d8
        | b8 d b fs' ~ fs d4 d8
      }

      \volta 2 {
        | a8 d a fs' ~ fs d4 d8
        | a8 d a g' ~ g fs d4
      }
    }
  }
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
