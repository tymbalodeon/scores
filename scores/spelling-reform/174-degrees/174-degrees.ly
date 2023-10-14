\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "174 Degrees"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c'' {
  \key e \major
  \time 4/4

  \repeat volta 2 {
    | a8 gs'4 cs,8 fs4 cs8 ( e )
    | b8 b'4 e,8 gs4 e
    | a,8 b'4 gs8 gs4 fs8 ( e )
    | fs,8 e'4 a,8 gs'2
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
