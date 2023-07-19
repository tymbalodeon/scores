\version "2.25.6"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "I Was Struck By The Words"
  subtitle = "The Chairman Dances"
  composer = "Eric Krewson"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
    \key c \major
    \time 4/4

    \clef "bass"

    | r2. r8 f ~
    | f f d c f d c g ~
    | g g b r c cs d g ~
    | g g e d g e d f, ~

    | f f a r b c d f ~
    | f f d c f d c g ~
    | g g b r c cs d g ~
    | g g e d g e d f, ~

    | f f a r b c d f ~
    | f f d c f d c g ~
    | g g b r c cs d g ~
    | g g e d g e d f, ~

    | f f a r b c d f ~
    | f f d c f d c g ~
    | g g b r c cs d g ~
    | g1

    | R1 * 2

    | d8 d''16 d d8 c16 c c8 b16 b b8 a
    | r8 g16 g g8 f16 f f8 e16 e e8 d
    | r8 b,16 b b8 c16 c c8 cs16 cs cs8 d
    | R1

    | d8 d''16 d d8 c16 c c8 b16 b b8 a
    | r8 g16 g g8 f16 f f8 e16 e e8 d
    | r8 b,16 b b8 c16 c c8 cs16 cs cs8 d
    | R1
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
