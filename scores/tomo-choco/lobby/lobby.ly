\version "2.25.11"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "helpers/bar-numbers-left.ily"

\include "lobby-changes.ily"

\header {
  title = "Lobby"
  subtitle = "Tomo Choco"
  composer = "Ashley Cubbler"
}

\layout {
  \context {
    \Score \consists
    #(set-bars-per-line
      '(4 4 6 4))
  }
}

music = \relative c'' {
  \key c \major
  \time 3/8

  | s4. * 30
}

\score {
  <<
    \changes
    \new Staff \with {
      \numericTimeSignature
    } {
      \compressMMRests
      \music
    }
  >>
}
