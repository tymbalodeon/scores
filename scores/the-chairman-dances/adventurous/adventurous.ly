\version "2.25.6"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Adventurous"
  subtitle = "The Chairman Dances"
  composer = "Eric Krewson"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
  \key a \major
  \clef "bass"

  | R1 * 2
  | R1 * 4

  \mark \default

  \repeat volta 2 {
    | r8 a16 a r8 a16 a r8 a16 a r8 a16 a
    | r8 a16 a r8 a16 a r8 e16 e r8 e16 e
    | r8 a16 a r8 a16 a r8 a16 a r8 a16 a

    \alternative {
      \volta 1 {
        | r8 a16 a r8 a16 a r8 e16 e r8 e16 e
      }

      \volta 2 {
        | r8 a16 a r8 a16 a r8 a gs fs
      }
    }
  }

  | r8 e16 e r8 e16 e r8 e16 e r8 e16 e
  | r8 e16 e r8 e16 e r8 e fs gs

  \mark \default

  | r8 a16 a r8 a16 a r8 a16 a r8 a16 a
  | r8 a16 a r8 a16 a r8 e16 e r8 e16 e
  | r8 a16 a r8 a16 a r8 a16 a r8 a16 a
  | r8 a16 a r8 a16 a r8 cs e fs

  | r8 a16 a a8 fs16 fs fs8 e16 e e8 a,16 a
  | a8 cs16 cs cs8 fs,16 fs fs8 e16 e r8 e
  | r8 a16 a r8 a16 a r8 a16 a r8 a16 a
  | r8 a16 a r8 a16 a r8 a gs fs

  \mark \default

  | r8 e16 e r8 e16 e r8 e16 e r8 e16 e
  | r8 e a d r e r a,
  | r8 e16 e r8 e16 e r8 e16 e r8 e16 e
  | r8 e a d r fs, r a

  | R1 * 2

  \mark \default

  \repeat volta 2 {
    | r8 a' e' b' fs, cs' a' e,
    | cs'8 a' a, e' d cs b e,
    | r8 a e' b' fs, cs' a' e,
    | cs'8 a' a, e' d cs b a

    | r8 cs e cs' fs,, cs' b' e,,
    | cs'8 a' a, e' d cs b e,
    | r8 a e' b' fs, cs' a' e,
    | cs'8 a' a, e' cs16 ( d ) cs8 b a

    \alternative {
      \volta 1 {
        | r8 e,16 e r8 e16 e r8 e16 e r8 e16 e
        | r8 e16 e r8 e16 e r8 e fs gs
      }

      \volta 2 {
        \mark \default

        | r8 e16 e r8 e16 e r8 e16 e r8 e16 e
      }
    }
  }

  | r8 e a d r e r a,
  | r8 e16 e r8 e16 e r8 e16 e r8 e16 e
  | r8 e a d r fs, r a

  | r8 e16 e r8 e16 e r8 e16 e r8 e16 e
  | r8 e a d r e r a,
  | r8 e16 e r8 e16 e r8 e16 e r8 e16 e
  | r8 e a d r fs, r e ~

  \mark \default

  | e1 ~
  | e1

  | R1 * 2
  | R1 * 7
  | r2 r8 e16 e r8 e16 e

  \mark \default

  | r8 a16 a r8 a16 a r8 a16 a r8 a16 a
  | r8 a16 a r8 a16 a r8 e16 e r8 e16 e
  | r8 a16 a r8 a16 a r8 a16 a r8 a16 a
  | r8 a16 a r8 a16 a r8 cs e fs

  | r8 a16 a a8 fs16 fs fs8 e16 e e8 a,16 a
  | a8 cs16 cs cs8 fs,16 fs fs8 e16 e r8 e
  | r8 a16 a r8 a16 a r8 a16 a r8 a16 a
  | r8 a16 a r8 a16 a r8 gs fs e

  \mark \default

  | R1 * 8

  \mark \default

  | R1 * 8 ^\markup \italic "(drums)"

  \mark \default

  \repeat volta 2 {
    | r8 e16 e r8 e16 e r8 e16 e r8 e16 e
    | r8 e16 e r8 e r e r e
    | r8 e16 e r8 e16 e r8 e16 e r8 e16 e

    \alternative {
      \volta 1 {
        | r8 e16 e r8 e r e r e
      }

      \volta 2 {
        | r8 e16 e r8 e r e r a
      }
    }
  }

  | R1 * 2

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
    \compressMMRests
    \music
  }
}
