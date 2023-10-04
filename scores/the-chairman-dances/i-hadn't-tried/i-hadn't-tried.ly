\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "I hadn't tried"
  subtitle = "The Chairman Dances"
  composer = "Eric Krewson"
  arranger = "Ben Rosen, bass"
}

music = \relative e {
    \key e \major
    \time 4/4
    \clef "bass"

    | R1 * 3
    | r2. r8 e16 e

    | r8 e16 e r8 e r e16 e r8 e16 e
    | r8 e r e16 e r8 e16 e r8 e
    | r8 e16 e r8 e16 e r8 e r e16 e
    | r8 e16 e r8 e r e16 e r8 e16 e

    \repeat volta 2 {
      | r8 e16 e r8 e r e16 e r8 e16 e
      | r8 e r e16 e r8 e16 e r8 e
      | r8 e16 e r8 e16 e r8 e r e16 e
      | r8 e16 e r8 e r e16 e r8 e16 e
    }

    \repeat volta 2 {
      | fs,4 r a r
      | e8 e'16 e r8 e r e16 e r8 e16 e
      | r8 e16 e r8 e r e16 e r8 e16 e
    }

    | r8 e16 e r8 e r e16 e r8 e16 e
    | r8 e16 e r8 e r e16 e r8 e16 e

    \repeat volta 2 {
      | r8 e16 e r8 e r e16 e r8 e16 e
      | r8 e r e16 e r8 e16 e r8 e
      | r8 e16 e r8 e16 e r8 e r e16 e
      | r8 e16 e r8 e r e16 e r8 e16 e
    }

    \repeat volta 2 {
      | fs,4 fs'8 r a,4 a'8 r

      \alternative {
        \volta 1 {
          | e,8 e'16 e r8 e r e16 e r8 e16 e
          | r8 e16 e r8 e r e16 e r8 e16 e
        }

        \volta 2 {
          | e,8 e'16 e r8 e r e16 e r8 e16 e
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
