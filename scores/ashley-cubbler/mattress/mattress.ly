\version "2.25.4"

\include "settings.ily"

\header {
  title = "Mattress"
  composer = "Ashley Cubbler"
  arranger = "Ben Rosen, bass"
}

intro = {
  | R1 * 4
}

verseOne = \relative a, {
  | r8 a e' a, ~ a4 e'8 e,
  | R1
  | r8 a e' a, ~ a4 e'8 e,
  | r4 r8 e r e r4

  | r8 a e' a, ~ a4 e'8 e, ~
  | e8 fs ( gs ) b ~ b4 cs8 e
  | r8 a, e' a, ~ a4 e'8 e,
  | r2 r4 b' \glissando

  | a'1
  | g4. f8 ~ f2
  | e4. e,8 ~ e2
  | gs1

  | r8 a e' a, ~ a2
  | r8 e e' e, r2
  | R1
  | r4 r8 e' r e r4
}

chorus = \relative a, {
  | a8 e'' c a, ~ a e'' c a, ~
  | a8 e'' c a, ~ a e'' c e,,
  | a8 e'' c a, ~ a c g'' c,,

  | b8 d' b b, ~ b d' b b,
  | g8 b' g, d' ~ d fs' d, fs, ~
  | fs8 a' fs, fs ~ fs a' fs, e

  | a8 c' a a, ~ a c' a a, ~
  | a8 c' a a, ~ a c e' c,

  | b8 d' b b, ~ b d' b a,
  | g8 b' g, g ~ g b' g, r
}

postChorusBase = \relative fs, {
  | fs8 e'16 es fs8 cs e16 es fs8 cs e,
  | fs8 e'16 es fs8 cs e16 es fs8 cs a
  | b8 d' ( cs ) b a fs d cs
  | b8 a gs cs fs a e e,

}

postChorusOne = \relative e, {
  \postChorusBase

  | e2 r
  | R1 * 3
}

postChorusTwo = \relative e, {
  \postChorusBase

  | R1 * 2
}

end = \relative fs, {
  \repeat volta 3 {
    | fs8 e'16 es fs8 cs e16 es fs8 cs e,

    \alternative {
      \volta 1,2 {
        | fs8 e'16 es fs8 cs e16 es fs8 cs a
        | b8 d' ( cs ) b a fs d e,
      }

      \volta 3 {
        | fs8 b'16 bs cs8 cs, b'16 bs cs8 cs, a
        | b8 d'' ( cs ) b a fs e d
        | cs b a gs fs e ds cs ~
        | cs2 r
      }
    }
  }
}

verseTwo = \relative a, {
  \repeat volta 5 {

    | a8 a' e' a, ~ a a, e'' a,

    \alternative {
      \volta 1 {
        | e,8 gs' b gs ~ gs e, fs' gs
      }

      \volta 2 {
        | e,8 gs' b gs ~ gs e, cs'' b
      }

      \volta 3 {
        | e,,8 gs' b gs ~ gs e, e'' ds
      }

      \volta 4 {
        | e,,8 gs' b gs ~ gs e, fs' e
      }

      \volta 5 {
        | g, g g g g g f4
      }
    }
  }

  | e8 a' e' a, ~ a a, e'' a,
  | e,8 gs' b gs ~ gs e, fs' e

  | a,8 a' e' a,, a' \glissando b fs' a,,
  | b' \glissando cs gs' cs, \glissando b fs' a, b ~
  | b1
  | r4 r8 e,, r e r4
}

bridge = \relative e' {
  | R1 * 4

  | r8 e b' e, ~ e4 b'8 e, ~

  \repeat volta 4 {
    | e8 ^\markup \italic "4x" e b' e, ~ e4 b'8 e, ~
  }

  | e8 e b' e, ~ e4 b'8 e,
  | b'8 e, b' e, b' e, b' e, ~
  | e2 r
}

music = \relative a, {
  \key e \major
  \time 4/4
  \clef "bass"

  \intro
  \verseOne
  \chorus
  \postChorusOne
  \verseTwo
  \chorus
  \postChorusTwo
  \bridge
  \end

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
