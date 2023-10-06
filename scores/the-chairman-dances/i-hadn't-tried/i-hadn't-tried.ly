\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "I Hadn't Tried"
  subtitle = "The Chairman Dances"
  composer = "Eric Krewson"
  arranger = "Ben Rosen, bass"
}

verse = {
  \repeat unfold 4 {
    | r8 e16 e r8 e r e16 e r8 e16 e
  }
}

music = \relative e {
  \key e \major
  \time 4/4
  \clef "bass"

  | R1 * 3
  | r2. r8 e16 e

  | r8 e r e r e16 e r8 e16 e
  | r8 e r e r e16 e r8 e16 e

  | r8 e16 e r8 e r e16 e r8 e16 e
  | r8 e16 e r8 e r e16 e r8 e

  \mark \default

  \repeat volta 2 {
    | r8 e r e r e16 e r8 e16 e
    | r8 e r e r e16 e r8 e16 e

    | r8 e16 e r8 e r e16 e r8 e16 e
    | r8 e16 e r8 e r e16 e r8 e
  }

  \mark \default

  \repeat volta 2 {
    | fs,4 ( fs'8 -. ) r a,4 ( a'8 -. ) r
    | e,8 e'16 e r8 e r e16 e r8 e16 e
    | r8 e r e r e16 e r8 e
  }

  | r8 e16 e r8 e r e16 e r8 e16 e
  | r8 e16 e r8 e16 e r8 e,16 e r8 e

  \mark \default

  | r8 e'16 e r8 e r e16 e r8 e16 e
  | r8 e16 e r8 e r e16 e r8 e16 e
  | r8 e16 e r8 e r e16 e r8 e16 e
  | r8 e16 e r8 e r e16 e r8 e16 e

  | r8 e,16 e r8 e r e'16 e r8 e16 e
  | r8 e16 e r8 e r e16 e r8 e16 e
  | r8 e,16 e r8 e r e'16 e r8 e16 e
  | r8 e16 e r8 e r e16 e r8 e,

  \mark \default

  \repeat volta 2 {
    | fs4 ( fs'8 -. ) r a,4 ( a'8 -. ) r

    \alternative {
      \volta 1 {
        | e,8 e'16 e r8 e r e16 e r8 e16 e
        | r8 e r e r e16 e r8 e
      }

      \volta 2 {
        \mark \default

        | e,8 e'16 e r8 e r e16 e r8 e16 e
        | r8 e16 e r8 e r d cs b
      }
    }
  }

  | e,8 e'16 e r8 e r e16 e r8 e
  | r8 e16 e r8 e e, \acciaccatura fs gs b cs

  \repeat volta 3 {
    | e,8 e'16 e r8 e r e16 e r8 e16 e
    | r8 e16 e r8 e r d cs b
    | e,8 e'16 e r8 e r e16 e r8 e
    \alternative {
      \volta 1,2 {
        | r8 e16 e r8 e r \acciaccatura fs, gs b cs
      }

      \volta 3 {
        | r8 e16 e r8 e e, \acciaccatura fs' gs b cs
      }
    }
  }

  \repeat volta 2 {
    | e,,8 e16 e r8 e r e r e
    | r8 e16 e r8 e r e r e

    \alternative {
      \volta 1 {
        | r8 e16 e r8 e r e r e
        | r8 e16 e r8 e r \acciaccatura fs gs b cs
      }

      \volta 2 {
        | b4. fs'8 ~ fs4 b, ~
        | b4 b8 b b b r4
      }
    }
  }

  | e,1 ~
  | e1
  | R1
  | R1

  \mark \default

  \repeat volta 2 {
    | fs1
    | fs1
    | gs1
    | gs1
    | e1 ~
    | e1
  }

  \mark \default

  \repeat volta 3 {
    | fs4 fs'8 r a,4 a'8 r

    \alternative {
      \volta 1,2 {
        | e,8 e'16 e r8 e r e16 e r8 e16 e
        | r8 e16 e r8 e r e16 e r8 e
      }

      \volta 3 {
        \mark \default

        | e,8 e'16 e r8 e r e16 e r8 e16 e
      }
    }
  }

  | r8 e16 e r8 e r d cs b

  \repeat volta 4 {
    | e,8 ^\markup "4x" e'16 e r8 e r e16 e r8 e16 e
    | r8 e16 e r8 e r d cs b
  }

  | b1
  | b1

  | e,1 ~
  | e1
  | R1
  | R1
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
