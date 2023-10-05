\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Be Thou My Vision"
  subtitle = "The Chairman Dances"
  composer = "Traditional"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
    \key c \major
    \time 3/4
    \clef "bass"

    | R2. * 4
    | R2. * 20
    | R2. * 20

    | d8 d d d d d
    | d8 d d d d d
    | c8 c c c c c
    | b'8 b b b b b
    | b8 b b b b b

    | a8 a a a a a
    | a8 a a a a a
    | g8 g g g g g
    | f8 f f f f f
    | f8 f f f f f

    | d'8 d d d d d
    | d8 d d d d d
    | c8 c c c c c
    | b8 b b b b b
    | b8 b b b b b

    | c8 c c c c c
    | c8 c c c c c
    | b8 b b b b b
    | f8 f f f f f
    | f8 f f f f f

    | c8 c c c c c
    | c8 c c c c c
    | b8 b b b b b
    | d8 d d d d d
    | d8 d d d d d

    | e,8 e e e e e
    | e8 e e e e e
    | R2.

    \bar "||"

    | R2. \fermata

    \bar "|."
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
