\version "2.25.26"

fadedAndFrayingBass = \relative c {
  \key g \major
  \clef "bass"
  \time 4/4

  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet

  | R1 * 4

  \mark \default

  | R1 * 8
  | R1 * 6

  \mark \default

  | R1 * 3

  | r2. e8 fs

  | g1 ~
  | g2. e,8 fs

  | g1 ~
  | g2. e'8 fs

  \mark \default

  | g2 fs2
  | e2. g,8 gs

  | a2. b8 c
  | d2. e8 fs

  | g2 fs4 b,
  | e2. e,8 g

  | a2 ~ a8 a b c
  | d2

  \once \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
  \once \override Glissando.minimum-length = 2.5
  \acciaccatura e16 \glissando fs8. a16 ~ a8 as

  | b4. fs8  b8 \xNote b16 fs ~ fs8 f
  | e4. b'8 \appoggiatura d16 e8. d16 ~ d8 b

  | a4. e8 a8 a, b c
  | d4 fs a4 e8 fs

  | g8 d'16 b ~ b8 a g8 d'16 b ~ b8 g
  | e8 b'16 g ~ g8 e e,8 e g gs

  \mark \default

  | a4. e'8 \appoggiatura a16 b8. a16 ~ a8 e
  | d2 ~ d8 e, fs g

  | a4. e'8  \appoggiatura b'16 c8. b16 ~ b8 a
  | fs4 e d4 e8 fs

  | g1 ~
  | g2. e,8 fs

  | g1 ~
  | g2. r4

  \mark \default

  | R1
  | r2. bf'8 a

  | g2 d2
  | g,2 g'4 r

  | R1
  | r2. bf,8 a

  | g2 d'2
  | g,2 g'4 r

  | R1
  | r2. bf,8 c

  | d2. a'4 \glissando
  | d2. r4

  | R1 * 2

  \mark \default

  | b,4. fs'8 b8 \xNote b16 fs ~ fs8 f
  | e4. b8 e8 e, fs g

  | a4. e8 a8 a b c
  | d4 fs, a4 e'8 fs

  | g8 g16 d ~ d8 g  fs fs16 b, ~ b8 fs'
  | e8 e16 b ~ b8 g e8 e g gs

  \mark \default

  | a4. e'8 \appoggiatura a16 b8. a16 ~ a8 e
  | d2 ~ d8 e, fs g

  | a4. e'8 \appoggiatura b'16 c8. b16 ~ b8 a
  | fs4 e d8. e16 ~ e8 e,

  | a4. e'8 \appoggiatura fs'16 g8. fs16 ~ fs8 e
  | d4 c b4 a

  | d,4. d8
  | a'4 e8 fs

  | g1 ~
  | g2. e,8 fs

  | g1 ~
  | g2. e'8 fs

  | g1 ~
  | g2. e,8 fs

  | g1 ~ ^\markup rit.
  | g'1 -\fermata

  \bar "|."
}
