\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "I'm Interested"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c'' {
    \key af \major
    \time 2/4

    | R2 * 8

    | R2 * 15
    | r4 r8 f \glissando

    | af2
    | R2 * 15

    | f'2
    | R2 * 14
    | r4 r8 f, \glissando

    | af2 c
    | cf bf
    | af bf
    | cf bf

    | af ef'
    | cf bf
    | af bf
    | cf  df

    | af2 ~
    | af
    | bf2
    | c4 bf

    | af2 ~
    | af4 r8 af \glissando
    | bf2
    | c4 bf

    | af2 ~
    | af4 r8 af \glissando
    | bf2
    | c4 bf

    | af2 ~
    | af4 r8 af \glissando
    | bf2 ~
    | bf4 r8 bf \glissando

    | c2 ~
    | c2
    | af2
    | af2

    | af2
    | af2
    | af2
    | af2

    | r8 bf16 \glissando c ~ c ef c8
    | af2
    | r8 bf16 \glissando c ~ c ef c8
    | af2

    | r8 bf16 \glissando c ~ c ef c8
    | af2
    | R2 * 2
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
