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
    | f f d4 c8 d f g, ~
    | g4 g'8 g, b d e g ~

    \alternative {
      \volta 1 {
        | g g e a, a' g e f, \laissezVibrer
      }

      \volta 2 {
        | g' \repeatTie g e4 d8 c a f \laissezVibrer
      }

      \volta 3 {
        | g' \repeatTie g e a, a' g e d ~
      }
    }
  }

  | d1 ~
  | d1

  \repeat volta 4 {
    | d4 ( d'8 -. ) r c, c' -. r b, ~
    | b4 b'8 -. e,, ( f e ) f fs
    | g4 ( g'8 -. ) r f, f' -. r e, ~

    \alternative {
      \volta 1,2,3 {
        | e4 e'8 -. e, ( g  a ) c cs
      }

      \volta 4 {
        | e,8 \repeatTie e'4. a8 g e f, ~
      }
    }
  }

  \repeat volta 4 {
    | f4 f'8 f, a c d f ~
    | f f d4 c8 d f g, ~
    | g4 g'8 g, b d e g ~

    \alternative {
      \volta 1,3 {
        | g g e4 d8 c a f \laissezVibrer
      }

      \volta 2 {
        | g' \repeatTie g e a, a' g e f, ~ \laissezVibrer
      }

      \volta 4 {
        | g' \repeatTie g e a, a' g e d ~
      }
    }
  }

  | d1 ~
  | d1

  \repeat volta 4 {
    | d4 ( d'8 -. ) r c, c' -. r b, ~
    | b4 b'8 -. e,, ( f e ) f fs
    | g4 ( g'8 -. ) r f, f' -. r e, ~

    \alternative {
      \volta 1,2,3 {
        | e4 e'8 -. e, ( g  a ) c cs
      }

      \volta 4 {
        | e,1
      }
    }
  }

  | R1
  | r2 c'8 d f g, ~
  | g4 g'8 g, b d e g ~
  | g g e4 d8 c a f ~


  \repeat volta 3 {
    | f4 f'8 f, a c d f ~
    | f8 f d4 c8 d f g, ~
    | g4 g'8 g, b d e g ~

    \alternative {
      \volta 1 {
        | g g e a, a' g e f, \laissezVibrer
      }

      \volta 2 {
        | g' \repeatTie g e4 d8 c a f \laissezVibrer
      }

      \volta 1 {
        | g' \repeatTie g e a, a' g e f \laissezVibrer
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
