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
  | a4 a8 e' ( d ) cs a fs ~
  | fs4 r8 d fs a fs g ~
  | g4 g, r4 r8 d' ~

  | d8 d d a d d d a
  | d8 d d a d e, fs g ~
  | g8 g g e g g g e
  | g8 g g e g b cs d ~

  | d8 d d d d d d a
  | d8 a d4 r4 r8 e ~

  | e4 e8 b e fs g a ~
  | a4 a8 fs16 g a8 g fs d ~
  | d4 d8 a d a' fs g ~
  | g4 g, g'8 fs4 e8 ~

  | e8 e d d cs cs b a ~
  | a8 a g e fs a d a
  | d8 e fs d a' g fs e
  | g4 g, r r8 d' ~

  | d8 d d a d d d a
  | d8 d d a d e, fs g ~
  | g8 g g e g g g e
  | g8 g g e g g4 a8 ~

  | a8 a a a a a a e'
  | a8 a a e a af4 g8 ~
  | g8 g g d g g g d
  | g8 d g d g g, gs a ~

  | a8 a a a a a a e'
  | a8 a a e a e fs g ~
  | g8 g g d g g g d
  | g8 d g fs'16 ( g fs8 ) e b e, ~

  | e8 a, b cs d e fs a
  | b8 a cs a e' a, g' fs ~
  | fs8 e d e fs d d, g ~
  | g8 a16 ( b ) d8 e g a as b ~

  | b8 e,,, a'' e,, g'' fs a,, e'' ~
  | e8 a,, d' a, cs' d e d ~
  | d8 fs16 g a8 g ~ g fs d d,
  | g4 g, r2

  | r8 e' e'4 r2
  | r8 a,, a'4 r2
  | r8 e, fs g a e fs g ~
  | g4 g' g8 fs4 e8 ~

  | e8 e, fs fs g g gs a ~
  | a8 a b b cs a cs d ~
  | d8 d e d a' g fs g ~
  | g4 g, b8 d ds e ~

  | e8 b e e, fs' d' cs a ~
  | a4 a8 e a g fs d ~
  | d8 d a' g ~ g fs d4
  | g,4 g r r8 d' ~

  | d8 d d a d d d a
  | d8 d d a d e, fs g ~
  | g8 g g e g g g e
  | g8 g g e g b cs d ~

  | d8 d d a d d d a
  | d8 d d a d e fs g ~
  | g8 g g d g g g d
  | g8 d g d g g r a ~

  | a8 a a a, a' a a a,
  | a'8 a a a, a' a4 b8 ~
  | b8 b b b, b' b b b,
  | b' b b b, b' a g fs ~

  | fs fs fs fs fs d e, fs ~
  | fs fs fs fs fs e fs g ~
  | g g g g g g g g
  | g g g g g g r4

  | r4 a'2.
  | R1
  | r4 g2.
  | R1

  | r4 a,2.
  | R1
  | r4 g2.
  | r2 r4 r8 d' ~

  | d d d d d d d a
  | d d d d d d d d
  | <d a'>1 ~
  | <d a'>1

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
