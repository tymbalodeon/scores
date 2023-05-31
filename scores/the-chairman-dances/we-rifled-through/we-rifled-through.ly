\version "2.25.5"

\include "settings.ily"

\header {
  title = "We Rifled Through"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative e {
  \key d \major
  \time 4/4
  \clef "bass"

  | R1 * 3
  | r2. r8 e ~

  | e4 e8 b e fs g a ~
  | a4 a8 e a g fs d ~
  | d4 d8 a d a' fs g ~
  | g4 g, g'8 fs4 e8 ~

  | e4 e8 b e fs g a ~
  | a4 a8 e' d cs a fs ~
  | fs4 r8 d fs a fs g ~
  | g4 g, r4 r8 d' ~

  | d d d a d d d a
  | d d d a d e, fs g ~
  | g g g e g g g e
  | g g g e g b cs d ~

  | d d d d d d d a
  | d a d4 r4 r8 e ~

  | e4 e8 b e fs g a ~
  | a4 a8 fs16 g a8 g fs d ~
  | d4 d8 a d a' fs g ~
  | g4 g, g'8 fs4 e8 ~

  | e e d d cs cs b a ~
  | a a g e fs a d a
  | d e fs d a' g fs e
  | g4 g, r r8 d' ~

  | d d d a d d d a
  | d d d a d e, fs g ~
  | g g g e g g g e
  | g g g e g g4 a8 ~

  | a a a a a a a e'
  | a a a e a af4 g8 ~
  | g g g d g g g d
  | g d g d g g, gs a ~

  | a a a a a a a e'
  | a a a e a e fs g ~
  | g g g d g g g d
  | g d g fs'16 ( g fs8 ) e b e, ~

  | e a, b cs d e fs a
  | b a cs a e' a, g' fs ~
  | fs e d e fs d d, g ~
  | g a16 ( b ) d8 e g a as b ~

  | b e,,, a'' e,, g'' fs a,, e'' ~
  | e a,, d' a, cs' d e d ~
  | d8 fs16 g a8 g ~ g fs d d,
  | g4 g, r2

  |
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
