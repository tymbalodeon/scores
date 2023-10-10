\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "I'm Interested"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c' {
    \key af \major
    \time 4/4

    | R1 * 4
    | R1 * 7
    | r2 r4 f \glissando

    | af1
    | R1 * 7

    | f'1
    | R1 * 7
    | r2 r4. f,8 \glissando

    | af2 c
    | b bf
    | af bf
    | b bf

    | af ef'
    | b bf
    | af bf
    | b df

    \repeat unfold 4 {
      | af1
      | bf2 c4 bf
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
