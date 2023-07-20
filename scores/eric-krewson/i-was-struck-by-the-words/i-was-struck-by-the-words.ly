\version "2.25.6"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "I Was Struck By The Words"
  subtitle = "The Chairman Dances"
  composer = "Eric Krewson"
  arranger = "Ben Rosen, bass"
}

music = \relative f, {
    \key c \major
    \time 4/4

    \clef "bass"

    \repeat volta 4 {
      | f4 f'8 f, a b c f ~
      | f f d4 c8 d f g, ~
      | g g b r c cs d g ~

      \alternative {
        \volta 1,2,3 {
          | g g e d a' g e f, \laissezVibrer
        }

        \volta 4 {
          | g'1 \repeatTie
        }
      }
    }

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
