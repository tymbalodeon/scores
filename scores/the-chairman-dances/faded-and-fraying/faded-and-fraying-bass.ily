\version "2.25.17"

fadedAndFrayingBass = \relative c {
  \key g \major
  \clef "bass"

  | R1 * 4

  | R1 * 8

  | R1 * 4

  | R1 * 5
  | r2. e8 fs

  | g1 ~
  | g2. e,8 fs
  | g1 ~
  | g2. e'8 fs

  | g2 fs
  | e2. g,8 gs
  | a2. b8 c
  | d2. e8 fs

  | g2 fs4 b,
  | e2. e,8 g
  | a2 ~ a8 a b c
  | d2 fs8. a16 ~ a8 as

  | b4. fs8 b8. fs16 ~ fs8 f
  | e4. b'8 e8. d16 ~ d8 b
  | a4. e8 a a, b c
  | d4 fs a e8 fs

  | g d'16 b ~ b8 a g d'16 b ~ b8 g
  | e b'16 g ~ g8 e e, e g gs
  | a4. e'8 b'8. a16 ~ a8 e
  | d2 ~ d8 e, fs g

  | a4. e'8 c'8. b16 ~ b8 a
  | fs4 e d e8 fs
  | g1 ~
  | g2. e,8 fs

  | g1 ~
  | g2. r4

  | R1
  | r2. bf'8 a
  | g2 d
  | g, g'4 r

  | R1
  | r2. bf,8 a
  | g2 d'
  | g, g'4 r

  | R1
  | r2. bf,8 c
  | d2. a'4
  | d2. r4

  | R1 * 2

  | b,4. fs'8 b8. fs16 ~ fs8 f
  | e4. b8 e8 e, fs g
  | a4. e8 a a b c
  | d4 fs, a e'8 fs

  | g g16 d ~ d8 g fs fs16 b, ~ b8 fs'
  | e e16 b ~ b8 g e e g gs
  | a4. e'8 b'8. a16 ~ a8 e
  | d2 ~ d8 e, fs g

  | a4. e'8 c'8. b16 ~ b8 a
  | fs4 e d8. e16 ~ e8 e,
  | a4. e'8 g'8. fs16 ~ fs8 e
  | d4 c b a

  | d,4. d8 a'4 e8 fs
  | g1 ~
  | g2. e,8 fs

  | g1 ~
  | g2. e'8 fs
  | g1 ~
  | g2. e,8 fs

  | g1
  | g'2. -\fermata r4

  \bar "|."
}
