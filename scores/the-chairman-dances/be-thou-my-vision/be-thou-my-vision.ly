\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Be Thou My Vision"
  subtitle = "The Chairman Dances"
  composer = "Eric Krewson"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
    \key c \major
    \time 3/4
    \clef "bass"

    | R2. * 25

    | d8 d d d d d
    | d8 d d d d d
    | c8 c c c c c
    | b'8 b b b b b
    | b8 b b b b b
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
