\version "2.25.13"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Hum on the Wire"
  composer = "Mark Rybaltowski"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
  \key c \major
  \time 4/4
  \clef "bass"

  | R1 * 4
  | R1 * 8

  | g8 d' g c, ~ c2
  | e8 g a a, ~ a2
  | g8 d' g c, ~ c2
  | e8 g gs a ~ a2

  | g,8 d' g c, ~ c2
  | e8 g a a, ~ a2
  | g8 d' g c, ~ c2
  | e8 g gs a ~ a a, a a

  \time 2/4
  | a a a e'

  \time 4/4
  | a a a g a g e e,

  | c'4 c8 g c b a g ~
  | g8 b c d ~ d d ( e ) e,
  | c'4 c8 g c e fs g ~
  | g8 d g, fs ~ fs a' fs, ( e )

  | c'4 c8 g c b a g ~
  | g8 b c d ~ d a' ( b ) a,
  | c4 c8 g c e fs g ~
  | g8 a g fs ~ fs fs, fs fs

  \time 2/4
  | fs8 fs fs d'

  \time 4/4
  | fs8 fs fs d a' g fs g

  | g, b' g, c g' c, b' c,
  | e, b'' e,, a a' a, b' ( g )
  | g, b' g, c g' c, b' c,
  | e, b' e, a' ( b ) a, b ( c )

  | g8 g r c ~ c g c4
  | e8 e r a, ~ a e' a r
  | g,8 g r c ~ c g c4
  | e8 e r a, ~ a e' a r
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
