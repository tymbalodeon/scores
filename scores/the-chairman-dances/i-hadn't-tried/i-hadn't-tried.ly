\version "2.25.19"

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

  \repeat volta 2 {
    | r8 e r e r e16 e r8 e16 e
    | r8 e r e r e16 e r8 e16 e

    | r8 e16 e r8 e r e16 e r8 e16 e
    | r8 e16 e r8 e r e16 e r8 e
  }

  \repeat volta 2 {
    | fs,4 ( fs'8 -. ) r a,4 ( a'8 -. ) r
    | e,8 e'16 e r8 e r e16 e r8 e16 e
    | r8 e r e r e16 e r8 e
  }

  | r8 e16 e r8 e r e16 e r8 e16 e
  | r8 e16 e r8 e r e,16 e r8 e16 e

  | r8 e'16 e r8 e r e16 e r8 e16 e
  | r8 e16 e r8 e r e16 e r8 e16 e
  | r8 e16 e r8 e r e16 e r8 e16 e
  | r8 e16 e r8 e r e16 e r8 e16 e

  | r8 e,16 e r8 e r e'16 e r8 e16 e
  | r8 e16 e r8 e r e16 e r8 e16 e
  | r8 e,16 e r8 e r e'16 e r8 e16 e
  | r8 e16 e r8 e r e16 e r8 e,

  \repeat volta 2 {
    | fs4 ( fs'8 -. ) r a,4 ( a'8 -. ) r

    \alternative {
      \volta 1 {
        | e,8 e'16 e r8 e r e16 e r8 e16 e
        | r8 e r e r e16 e r8 e,
      }

      \volta 2 {
        \segnoMark \default

        | e8 e'16 e r8 e r e16 e r8 e16 e
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

    \alternative {
      \volta 1 {
        | r8 e16 e r8 e r e r e
        | r8 e16 e r8 e r e r e
        | r8 e16 e r8 e r \acciaccatura fs gs b cs
      }

      \volta 2 {
        | r8 e,16 e r8 e r e r4
        | b'4. fs'8 ~ fs4 b, ~
        | b4 b8 b b b r4
      }
    }
  }

  \codaMark \default

  \bar "||"

  | e,1 ~
  | e1
  | R1
  | R1

  | fs'2 ( ~ fs8 a ) e' ( fs )
  | a8 ( gs4 ) fs8 ~ fs8 e ( cs4 )
  | gs4. b8 ~ b b ( cs ) b ~
  | b4 r8 gs b gs ( fs4 )
  | <<
    {
      | r4. gs'8 ~ gs2 ~
      | gs1
    }
    \\
    {
      | e,,1 ~
      | e1
    }
  >>

  | fs'4. ( a8 ~ a4 ) cs,8 e,
  | fs4. a'8 ~ a gs ( fs4 )
  << {
    | r4. b8 ~ b cs8 ( ds4 ) ~
    | ds1
  } \\ {
    | gs,,2 ~ gs8 r4 gs'8 ~
    | gs1
  } >>

  \arpeggioArrowDown

  | <e, b'' e gs>1 \arpeggio ~
  | <e b'' e gs>1

  \repeat volta 2 {
    | fs4 ( fs'8 -. ) r a,4 ( a'8 -. ) r
    | e,8 e'16 e r8 e r e16 e r8 e16 e
    | r8 e r e r e16 e r8 e
  }

  | fs,4 ( fs'8 -. ) r a,4  ^\markup \italic "D.S. al Coda" ( a'8 -. ) r

  \bar "||"
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

\score {
  \new Staff \with {
    \numericTimeSignature
    \clef "bass"
  } {
    \mark \markup \large { \musicglyph "scripts.coda" }

    | r8 e r e r e16 e r8 e16 e
    | r8 e r e r e16 e r8 e16 e

    | r8 e16 e r8 e r e16 e r8 e16 e
    | r8 e16 e r8 e r e16 e r8 e

    | r8 e r e r e16 e r8 e16 e
    | r8 e r e r e16 e r8 e16 e

    \bar "|."
  }
}
