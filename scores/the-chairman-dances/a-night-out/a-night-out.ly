\version "2.25.4"

\include "settings.ily"

\header {
  title = "A Night Out"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
  \tempo 4 = 100
  \key c \major
  \time 4/4

  \clef "bass"
  r2 r4 a8 b8 |
  c2. e4 |
  g2. g4 |
  a2. e4 |
  g2. g,4 |
  d'2. d4 |
  g2. a,8 b8 |
  c2. e'4 |
  b2. g4 |
  a2 ~ \times 2/3 {
    a4 b4 c4
  }
  g2. g,4 |
  d'2. d4 |
  g2. a,8 b8 |
  <c g'>1 ~ ~ |
  <c g'>1 |
  e'8. e16 ~ e8 e8 e4. g8 |
  d2. ~ d8 a8 |
  c8. c16 ~ c8 b8 c8. d16 ~ d8 e8 |
  b8. a16 ~ a8 g8 g8. f16 ~ f8 e8 |
  d2. e,8 f8 |
  g2. a8 b8 |
  c2. e4 |
  g2 d'8. g,16 ~ g8 gs8 |
  a2. e4 |
  g2. g,4 |
  d'2. d4 |
  g2. a,8 b8 |
  <c g'>1 ~ ~ |
  <c g'>2. a8 b8 |
  c2. e'4 |
  b2 g'8. f16 ~ f8 e8 |
  d8. c16 ~ c8 b8 a8. g16 ~ g8 d8 |
  g,2 g'4 g,4 |
  d'2. d4 |
  g2 g,2 |
  g'2 g,2 |

  \time 3/2

  g'2 g,2 g'4 g4 |

  \time 4/4

  e'8. e16 ~ e8 e8 e4. g8 |
  d2. ~ d8 a8 |
  c8. c16 ~ c8 b8 c8. d16 ~ d8 e8 |
  b8. a16 ~ a8 g8 g8. f16 ~ f8 e8 |
  d2 ~ d8 d8 e8 f8 |
  g8. a16 ~ a8 b8 g8. a16 ~ a8 b8 |
  c4. e8 g4 e4 |
  g,4. d'8 c8. b16 ~ b8 a8 |
  d,4 d'4 g4 a4 |
  b8. c16 ~ c8 d8 b32 c32 b8 g16 ~ g8 a8 ~ |
  <d, a'>2. ~ ~ <d a'>4 |
  \times 2/3  {
    r8 r8 g,8 }
  \once \omit TupletBracket
  \times 2/3  {
    a8 c8 e8 }
  \once \omit TupletBracket
  \times 4/5  {
    g8 e8 f8 g8 e8 }
  |
  c2. g4 |
  c,2. a8 b8 |
  c2. e4 |
  g2. g4 |
  a2. e4 |
  g2. g,4 |
  d'2. d4 |
  g2 ~ g8 g,8 a8 b8 |
  <c g'>1 ~ ~ |
  <c g'>1 \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
