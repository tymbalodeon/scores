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
    | d8 d d d d a
    | c8 c c c c ( d )
    | g,8 g g g g g
    | g8 g g g e g

    | a8 a a a a a
    | a8 a a a e f
    | g8 g g g g g
    | f8 f f f f f
    | f8 f f f f c'

    | d8 d d d d d
    | d8 d d d d a
    | c8 c c c c ( d )
    | g,8 g g g g g
    | g8 g g g g ( a )

    | c8 c c c c c
    | c8 c c c e, f
    | g8 g g g d' g
    | f8 f f f f f
    | f8 f f f f a,

    | c8 c c c c c
    | c8 c c c e, f
    | g8 g g g g g
    | f8 f f f f f
    | f8 f f f f f

    | e2. ~
    | e2.
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
