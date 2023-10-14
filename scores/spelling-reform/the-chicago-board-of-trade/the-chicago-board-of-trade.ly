\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "The Chicago Board of Trade"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c'' {
    \key fs \major
    \time 4/4

    | R1 * 8
    | R1 * 8

    | cs,8 gs' as gs cs, gs' as gs
    | ds8 fs as fs ds fs as fs
    | cs8 gs' as gs cs, gs' as gs
    | <d fs as>1


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
