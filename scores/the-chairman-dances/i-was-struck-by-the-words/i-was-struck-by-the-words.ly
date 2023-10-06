\version "2.25.6"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "I Was Struck By The Words"
  subtitle = "The Chairman Dances"
  composer = "Eric Krewson"
  arranger = "Ben Rosen, bass"
}

music = \relative d {
  \key c \major
  \time 4/4

  \clef "bass"

  | R1 * 3

  | r2 d8 c a f ~

  \repeat volta 3 {
    | f4 f'8 f, a c d f ~
    | f f d r c ( d ) f g, ~
    | g4 g'8 g, b d e g ~

    \alternative {
      \volta 1 {
        | g g e a, a' g e f, \laissezVibrer
      }

      \volta 2 {
        | g' \repeatTie g e r d c a f \laissezVibrer
      }

      \volta 3 {
        | g' \repeatTie g e a, a' g e d ~
      }
    }
  }

  | d2 r8 a c d ~
  | d4 a'8 r d8 c a d, ~ (

  \repeat volta 4 {
    | d4 d'8 -. ) r c, c' -. r b, ~
    | b4 b'8 -. e,, ( f e ) f g ~ (
    | g4 g'8 -. ) r f, f' -. r e, ~

    \alternative {
      \volta 1,2,3 {
        | e4 e'8 -. e, ( g  a ) c d \laissezVibrer
      }

      \volta 4 {
        | e,4 \repeatTie e'8 a, a' g e f, ~
      }
    }
  }

  \repeat volta 4 {
    | f4 f'8 f, a c d f ~
    | f f d r c ( d ) f g, ~
    | g4 g'8 g, b d e g ~

    \alternative {
      \volta 1,3 {
        | g g e r d c a f \laissezVibrer
      }

      \volta 2 {
        | g' \repeatTie g e a, a' g e f, \laissezVibrer
      }

      \volta 4 {
        | g' \repeatTie g e a, a' g e d ~
      }
    }
  }

  | d2 r8 a c d ~
  | d4 a'8 r d8 c a d, ~ (

  \repeat volta 2 {
    | d4 d'8 -. ) r c, c' -. r b, ~
    | b4 b'8 -. e,, ( f e ) f g ~ (
    | g4 g'8 -. ) r f, f' -. r e, ~
    | e4 e'8 -. e, ( g  a ) c d ~
  }

  | d8 d'16 d d8 -. c16 c c8 -. b -. b -. a -.
  | r8 f16 f f8 e16 e e8 d c g
  | r8 b16 b b8 c16 c c8 d f g
  | r8 b16 b b8 c16 c e8 g a d,

  | r8 d,16 d d8 c16 c c8 b b a
  | r8 f16 f f8 e16 e e8 f fs g
  | r8 b16 b b8 c16 c d8 f g g, ~
  | g1

  | R1
  | r2 c8 d f g, ~
  | g4 g'8 g, b d e g ~
  | g g e r d c a f ~


  \repeat volta 3 {
    | f4 f'8 f, a c d f ~
    | f8 f d r c d f g, ~
    | g4 g'8 g, b d e g ~

    \alternative {
      \volta 1 {
        | g g e a, a' g e f, \laissezVibrer
      }

      \volta 2 {
        | g' \repeatTie g e r d c a f \laissezVibrer
      }

      \volta 3 {
        | g' \repeatTie g e a, a' g e f ~
      }
    }
  }

  \repeat volta 4 {
    | f8 f c' c, a' b ( c ) f, ~
    | f8 f c' c, e' d c g ~
    | g8 g d' d, e' f ( g ) g, \parenthesize ~

    \alternative {
      \volta 1 {
        | g8 g b d a' g e f, \laissezVibrer
      }

      \volta 2 {
        | b8 d e ( g ) a e ( d ) c
      }

    }
  }
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
