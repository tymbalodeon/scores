\version "2.25.15"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Mattress"
  subtitle = "Tomo Choco"
  composer = "Ashley Cubbler"
  arranger = "Ben Rosen, bass"
}

verseOne = \relative a, {
  | R1 * 8

  | R1 * 3
  | r2 r4 b \glissando

  | a'1
  | g4. f8 ~ f2
  | e4. e,8 ~ e2
  | gs1

  | R1 * 4
}

chorus = \relative a, {
  | a8 e'' c a, ~ a e'' c e,,
  | a8 e'' c a, ~ a e'' c e,,
  | a8 e'' c a, ~ a c g'' c,,

  | b8 d' b b, ~ b d' b e,,
  | g8 b' g, d' ~ d fs' d, e,
  | fs8 a' fs, fs ~ fs a' fs, e

  | a8 c' a a, ~ a c' a a, ~
  | a8 c' a a, ~ a c e' c,

  | b8 d' b b, ~ b d' b a,
  | g8 b' g, g ~ g b' g, r
}

postChorusBase = \relative fs, {
  | fs8 e'16 es fs8 cs e16 es fs8 cs e,
  | fs8 e'16 es fs8 cs e16 es fs8 cs a
  | b8 d' ( cs ) b a fs e d (
  | cs8 ) b a d fs a e e,

}

postChorusOne = \relative e, {
  \postChorusBase

  | e'2 r
  | R1 * 3
}

postChorusTwo = \relative e, {
  \postChorusBase

  | R1 * 2
}

end = \relative fs, {
  | R1 * 2
  | b8 d' ( cs ) b a fs d e,

  | fs8 e'16 es fs8 cs e16 es fs8 cs e,
  | fs8 e'16 es fs8 cs e16 es fs8 cs a
  | b8 d' ( cs ) b a fs d e,

  | fs8 e'16 es fs8 cs e16 es fs8 cs e,
  | fs8 b'16 bs cs8 cs, b'16 bs cs8 cs, a
  | b8 d'' ( cs ) b a fs e d
  | cs b a gs fs e ds cs ~
  | cs2 r
}

verseTwo = \relative a, {
  | R1 * 16
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

  \verseOne

  \key g \major
  \bar "||"

  \chorus

  \key d \major
  \bar "||"

  \postChorusOne

  \key e \major
  \bar "||"

  \verseTwo

  \key g \major
  \bar "||"

  \chorus

  \key d \major
  \bar "||"

  \postChorusTwo

  \key e \major
  \bar "||"

  \bridge

  \key d \major
  \bar "||"

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
