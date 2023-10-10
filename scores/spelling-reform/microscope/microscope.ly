\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Microscope"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c'' {
    \key c \major
    \time 4/4
    | c1
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
