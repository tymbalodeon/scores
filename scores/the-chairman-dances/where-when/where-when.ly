\version "2.25.5"

\include "settings.ily"

\header {
  title = "Where/When"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

verseOne = \relative c {
  | r2 r4 r8 g16 ( a )

  | c4 r8 c g g4 c8 ~
  | c c4 c8 g' g, c cs
  | d4 r8 d a a4 d8 ~
  | d e4 f8 ~ f e d4

  | e,4 r8 e c'8 c4 e8 ~
  | e8 g4 a8 ~ a g e4
  | f,4 g8 ( a ) c ( d ) e f ~
  | f8 e4 d8 ~ d c a4

  | e4 r8 g a b4 c8 ~
  | c8 d4 e8 ~ e f g4
  | g4 r8 g g4 r8 g ~
  | g g4 g8 g4 r
}

chorus = \relative c {
  | c4 r8 c e, e4 f8 ~
  | f fs4 g8 r e c' cs
  | d4 r8 d f, f4 g8 ~
  | g8 a4 c8 ~ c e, d' ds

  % | e

  | c4 r8 c e, e4 f8 ~
  | f fs4 g8 r e c' cs
  | d8 f a c e f e d ~
  | d8 c4 a8 ~ a g f4

  | e,
  % | g8 a4 c8 ~ c e, d' ds
}

music = \relative c {
  \key c \major
  \clef "bass"

  | R1 * 3

  \verseOne
  \chorus
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
