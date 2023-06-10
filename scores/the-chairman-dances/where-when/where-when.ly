\version "2.25.5"

\include "settings.ily"

\header {
  title = "Where/When"
  composer = "The Chairman Dances (Eric Krewson)"
  arranger = "Ben Rosen, bass"
}

verseOne = \relative e, {
  | R1 * 3
  | r2 r4 r16 e g ( a )

  | c8. c16 g g8 c16 ~ c c8 c16 g' g, c cs
  | d8. d16 a a8 d16 ~ d e8 f16 ~ f e d a
  | e8. e16 c'16 c8 e16 ~ e16 g8 a16 ~ a g e e,
  | f8 g16 ( a ) c ( d ) e f ~ f16 e8 d16 ~ d c a8
  | e8. e16 g a8 b16 ~b16 c8 d16 ~ d e f a,
  | g'8. g16 g8. g16 ~ g g8 g16 g16 a, g ( a )
}

chorus = \relative c {
  | c8. c16 e, e8 f16 ~ f fs8 g a16 c cs
  | d8. d16 f, f8 g16 ~ g16 a8 c16 ~ c e, d' ds
  | e8. e16 e, g8 a16 ~ a b8 c16 ~ c d e c
  | f8 c16 ( d ) f e d g ~ g g,8 g'16 a,8 b

  | c8. c16 e, e8 f16 ~ f fs8 g16 ~ g e c' cs
  | d8. e16 f a8 f'16 ~ f e8 d16 ~ d c a a,
  | e8. e16 e g8 a16 ~ a b8 c16 ~ c d e c
  | f,8 c'16 ( d ) f e d g, ~ g g'8 g,16 a8 b

  | c4 c8. c16 ~ c c8 c16 c e, g ( a )
  | c4 c8. c16 ~ c c8 g16 c e, g ( a )
}

verseTwo = \relative c {
  | c8. c16 g' g8 c16 ~ c c8 g16 c g c, cs
  | d8. d16 a' a8 d16 ~ d d8 c16 d c a a,
  | e'8. e16 c'16 c8 e16 ~ e16 g8 a16 ~ a g e e,
  | f8 g16 ( a ) c ( d ) e f ~ f16 e8 d16 ~ d c a8
  | e8. e16 g a8 b16 ~ b16 c8 d16 ~ d e f a,
  | g'8. g16 g8. g16 ~ g g8 g16 g16 a, g ( a )
}

music = \relative c {
  \key c \major
  \clef "bass"

  \verseOne
  \chorus
  \verseTwo
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
