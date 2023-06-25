\version "2.25.6"

\include "helpers/settings.ily"

\header {
  title = "I Saw You Looking"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

music = \relative bf, {
  \clef "bass"
  \tempo 4 = 100
  \key bf \major

  | R1 * 2
  | r2 r4 r8 bf8

  | d'4 bf4 a8 g4 f8 ~
  | f8 ef4 d8 ~ d8 c4 bf8
  | g4. bf8 ~ bf8 d8 f8 g8 ~
  | g8 c,4 ef8 ~ ef8 d4 a8

  | bf4. bf8 ~ bf8 bf8 d8 ef8
  | f4. f8 ~ f8 c8 f8 e8
  | ef4. bf'8 ~ bf8 bf,8 ef8 d8
  | c8 r8 f,8 g8 ~ g8 c4 g8

  | bf4. bf8 ~ bf8 bf8 d8 ef8
  | f4. f8 ~ f8 c8 f8 g8
  | ef4. bf'8 ~ bf8 bf,8 ef8 d8
  | c8 r8 f,8 g8 ~ g8 c4 bf8

  | f''4 d4 c8 bf4 a8 ~
  | a8 g4 f8 ~ f8 ef4 d8
  | g,4. bf8 ~ bf8 d8 f8 g8 ~
  | g8 c,4 ef8 ~ ef8 d4 bf8

  | d'4 bf4 a8 g4 f8 ~
  | f8 ef4 d8 ~ d8 e,8 f8 fs8
  | g8 g8 bf8 bf8 d8 f8 g8 c,8 ~
  | c8 g4 ef'8 ~ ef8 d4 a8

  | bf4. bf8 ~ bf8 bf8 g8 gf8
  | f4. f8 ~ f8 f8 cs'8 d8
  | ef4. bf'8 ~ bf8 bf,8 ef8 d8
  | c8 r8 f,8 g8 ~ g8 c4 g8

  | bf4. bf'8 ~ bf8 bf8 c8 \tuplet 3/2 { bf16 c16 bf16 }
  | a4. f8 ~ f8 f8 a8 bf8
  | g4. ef8 ~ ef8 bf8 ef8 d8
  | c8 r8 f,8 g8 ~ g8 c4 g8

  | bf4 d'8 bf,8 d8 d8 f'8 d,8
  | a'8 c'8 r8 <f,, a'>8 ~ ~ <f a'>8 f8 a'8 f,8
  | g8 bf'8 g,8 c'8 g,8 d''8 g,,8 d''8
  | c,,8 ef'8 r8 g,,8 c'8 d8 c8 a,8

  | bf4 d'8 bf,8 d8 d8 f'8 d,8
  | a'8 c'8 r8 <f,, a'>8 ~ ~ <f a'>8 f8 a'8 f,8
  | g8 bf'8 r8 <ef,, g'>8 ~ ~ <ef g'>8 ef8 g'8 ef,8
  | c8 ef'8 r8 g,,8 c'8 d8 c8 bf,8

  | f''4 d4 c8 bf4 a8 ~
  | a8 g4 f8 ~ f8 ef4 d8
  | g,4. bf8 ~ bf8 d8 f8 g8 ~
  | g8 c,4 ef8 ~ ef8 d4 bf8

  | d'4 bf4 a8 g4 f8 ~
  | f8 ef4 d8 ~ d8 r8 f,8 fs8
  | g8 g8 bf8 bf8 d8 f8 g8 c,8 ~
  | c8 g4 ef'8 ~ ef8 d4 a8

  | bf4 d'8 bf,8 d8 d8 f'8 d,8
  | a'8 c'4 a8 ~ a2
  | <ef bf' d>1

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
