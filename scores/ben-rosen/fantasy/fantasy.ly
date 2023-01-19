\version "2.24.0"

\include "settings.ily"

\header {
  title = "Fantasy"
  composer = "Ben Rosen"
}

key_and_time = {
  \tempo 4 = 56
  \key d \minor
  \time 2/4
}

voices_one = {
  << {

    \relative d'' {
      | d2 ~
      | d4 e16 d16 cs16 g'16
      | e4 ~ e16 f16 e16 d16
      | \tuplet 3/2 { e8 f8 a8 }

      | g4 ~
      | g4 ~
      | \tuplet 3/2 { g8 e8 f8 }
      | \tuplet 3/2 { f8 e8 d8 }

      | e4 ~
      | e4
      | \tuplet 3/2 { e8 d8 cs8 ~ }
      | cs2 ~

      | cs2 -\fermata

      | c2 ~
      | c4. bf8
      | a2 ~
      | a4. bf8
      | g8 a8 bf8 e,8
    }

  } \\ {

    \relative f' {
      | f8. a16 g e f a
      | g2 ~
      | g4 a ~
      | a d ~

      | d2
      | a2
      | \tuplet 3/2 { a8 g a ~ } a4 ~
      | a2 ~

      | a2 -\fermata

      | a8 g a f
      | e2
      | f2 ~
      | f4. d8

      | cs4 r
    }

  } >>
}

upper_staff = \relative e'' {
  \key_and_time

  \voices_one

  | e8 d cs g' ~
  | g8 f e f \tuplet 3/2 { g8 a bf } \tuplet 3/2 { a8 d cs }
  | \tuplet 3/2 { d8 a bf } \tuplet 3/2 { g8 a f }
  | \tuplet 3/2 { d8 a f } d4

  \time 6/8  \key b \minor fs2. |
  g4. gs4. |
  fs8. gs16 as8 \once \omit TupletBracket
  \times 3/2  {
    e8 e8 }
  |
  fs8. a16 g8 fs8 e8 fs8 |
  b4. a8. g16 a8 |
  g8 a8 b8 ~ b8 c8 b8 |
  gs16 a8 a16 gs8 gs16 a8 a16 gs8 |
  a8 gs8 a8 g8 fs8 g8 |
  fs2. ^\fermata |
  \once \omit TupletBracket
  \times 3/2  {
    fs8 fs8 }
  \once \omit TupletBracket
  \times 3/2  {
    fs8 e8 }
  |
  \once \omit TupletBracket
  \times 3/2  {
    d8 cs8 }
  d4. |
  d4. e4. |
  e4. e4. |
  \once \omit TupletBracket
  \times 3/2  {
    f8 a8 }
  \once \omit TupletBracket
  \times 3/2  {
    b8 b8 }
  |
  \once \omit TupletBracket
  \times 3/2  {
    cs8 cs8 }
  \once \omit TupletBracket
  \times 3/2  {
    cs8 cs8 }
  |
  \once \omit TupletBracket
  \times 3/2  {
    cs8 cs8 }
  \once \omit TupletBracket
  \times 3/2  {
    cs8 bf8 }
  |
  a2. ^\fermata \bar "||"
  \key d \minor d,2. ~ |
  \once \omit TupletBracket
  \times 3/2  {
    d8 f8 }
  \once \omit TupletBracket
  \times 3/2  {
    e8 d8 }
  |
  e8 d8 e8 g8 f8 e8 |
  \once \omit TupletBracket
  \times 3/2  {
    f8 f8 }
  \once \omit TupletBracket
  \times 3/2  {
    g8 a8 }
  |
  bf4. g4. |
  a2. |
  f8 g8 f8 a8 g8 f8 |
  e8 f8 e8 g8 f8 e8 |
  d2. |
  d2. |
  e4. cs8 d8 e8 |
  e8 f8 g8 g8 a8 bf8 |
  bf8 a8 g8 a8 g8 f8 |
  g8 f8 e8 f8 e8 d8 |
  cs2. _ "rit." \bar "||"
  \time 3/4  \tempo 4=69 d8 \times 2/3 {
    e16 d16 cs16 }
  d8 e8 f8 d8 |
  g8 \times 2/3 {
    a16 g16 fs16 }
  g8 a8 bf8 g8 |
  f16 bf16 a16 g16 f16 e16 d16 cs16 d16 f16 e16 d16 |
  a'8 \times 2/3 {
    b16 a16 gs16 }
  a8 b8 c8 a8 |
  d8 \times 2/3 {
    e16 d16 cs16 }
  d8 e8 f8 d8 |
  c16 g'16 f16 e16 f16 bf16 a16 g16 f16 e16 d16 cs16 |
  d16 c16 bf16 a16 g8 a8 d8 cs8 |
  d4. cs8 a4 |
  bf4. a8 g8 bf8 |
  \time 2/4  a8 d16 e16 d8 g16 e16 |
  f8 r8 r4 s2 s2*5 s2 |
  \time 3/4  d8 \times 2/3 {
    e16 d16 cs16 }
  d8 e8 f8 d8 |
  g8 \times 2/3 {
    a16 g16 fs16 }
  g8 a8 bf8 g8 |
  f16 bf16 a16 g16 f16 e16 d16 cs16 d16 f16 e16 d16 |
  cs16 e16 d8 cs16 e16 d16 f16 e16 g16 f16 e16 |
  f16 a16 g8 f16 a16 g16 bf16 a16 e16 f16 d16 |
  \time 2/4  f8 g,8 s2. s1*3 s2 |
  \time 3/4  r4 d'8 \times 2/3 {
    e16 d16 cs16 }
  d8 e8 |
  \numericTimeSignature\time 4/4  f8 d8 gs8 \times 2/3 {
    a16 gs16 fs16 }
  gs8 a8 b8 gs8 |
  \time 2/4  a8 e8 d8 f8 |
  e4 d4 |
  e4 c8 d8 |
  c4 b8 c8 |
  b4 r8 e8 |
  f8. a16 gs4 |
  e4 e8 r8 |
  \time 3/4  b8. d16 c8. d16 c8 b8 |
  e8 b8 g4 g8. c16 |
  c16 d16 c16 bf16 a16 f16 e16 g16 f16 g16 a8 |
  e'16 c8. c8 f8 e4 |
  e4 d4 d8 a16 c16 |
  b8 a8 g8 a8 b8 r8 |
  e8 d8 c8 d8 e8 r8 |
  e,8 fs8 g8 b8 c8 b8 ~ |
  b8 a16 g16 e'8 c8 a16 d16 c16 b16 |
  a8 c8 b8 f'8 e8 gs8 |
  a16 d16 c16 b16 a16 g16 f16 e16 d16 a16 d16 e16 |
  f16 d16 cs16 g16 f16 a16 g16 f16 e8. cs16 |
  a16 _\markup{ \bold {Poco meno mosso} } d16 c16 bf16 a16 bf16 a16 g16
  a16 bf16 c16 ef16 |
  d16 g16 f16 ef16 d16 ef16 d16 c16 d16 c16 d16 bf16 |
  a16 c16 f16 ef16 d16 f16 bf16 a16 g16 bf16 ef16 d16 |
  cs16 _ "rit." e16 a,16 cs16 d16 a16 bf8 g16 bf16 a16 g16 |
  f16 e16 d16 a'16 g16 f16 g16 e16 <d f>8 <cs e>8 | \barNumberCheck
  #110
  <f, a d>2. \bar "|."
}

lower_staff = \relative c {
  \clef bass
  \key_and_time
  \clef "bass" \time 2/4 \key d \minor |
  a4 ~ a8. c16 |
  bf16 g16 a16 bf16 ~ bf4 ~ |
  bf16 g16 a16 bf16 a4 ~ |
  a4 ~ \once \omit TupletBracket
  \times 2/3  {
    a8 bf8 a8 }
  |
  g4. bf8 |
  d4 ~ d8. cs16 ~ |
  cs2 |
  \once \omit TupletBracket
  \times 2/3  {
    g'8 f8 e8 ~ }
  e4 ~ |
  e2 |
  c2 |
  bf8 a8 bf8 g8 |
  a2 ~ |
  a8 g8 a8 f8 |
  e4 g8 a8 |
  bf8 g8 e'8 d8 s4 \clef "treble" |
  <cs a'>4 ~ |
  a'8 e8 a,8 e'8 |
  d2 |
  \clef "bass" r4 \times 2/3 {
    r8 f,8 g8 }
  \bar "||"
  \time 6/8  \key b \minor a2. |
  g4. b4. |
  as4. ~ as8 gs8 as8 |
  b8 a8 b8 a4. |
  ds8. e16 ds8 b4. |
  b8. c16 b8 e8. e16 b8 |
  b8 a8 b8 b8 cs8 b8 |
  a8 b8 a8 ~ a16 b8 b16 a8 |
  as2. |
  r8 as8 as8 r8 b8 as8 |
  r8 fs8 fs8 fs4. |
  fs4. g4. |
  g4. \once \omit TupletBracket
  \times 3/2  {
    fs8 g8 }
  |
  r8 a8 c8 r8 d8 e16 d16 |
  r8 e8 e8 r8 g8 f8 |
  r8 e8 d8 r8 cs8 d8 |
  cs2. \bar "||"
  \key d \minor f,2. |
  g8 f8 g8 a8 g8 f8 |
  g2. |
  a8 bf8 a8 g8 f8 e8 |
  \once \omit TupletBracket
  \times 3/2  {
    g8 a8 }
  \once \omit TupletBracket
  \times 3/2  {
    bf8 g8 }
  |
  e8 f8 g8 a8 bf8 g8 |
  a4. f8 g8 a8 |
  g2. |
  f8 g8 f8 ~ f4. |
  f2. |
  g4. e4. s2. s2. s1. \bar "||"
  \time 3/4  s4*9 s4*9 s2. |
  d8 \times 2/3 {
    e16 d16 cs16 }
  d8 e8 f8 d8 |
  g8 \times 2/3 {
    a16 g16 fs16 }
  g8 a8 bf8 g8 |
  \time 2/4  f16 bf16 a16 g16 f16 e16 d16 cs16 |
  d8 e8 f8 d8 |
  g8 a8 bf8 g8 |
  c,8 d8 e8 c8 |
  f8 g8 a8 f8 |
  bf,8 c8 d8 bf8 |
  e8 f8 g8 e8 |
  a8 g8 f8 e8 |
  d8 cs8 a8 cs8 |
  \time 3/4  d16 a'16 g16 e16 f16 d16 e16 cs16 d16 e16 f16 a16 |
  g16 d'16 c16 a16 bf16 g16 a16 fs16 g16 a16 bf16 g16 |
  a16 g16 f16 e16 d16 c16 bf16 a16 bf16 d16 c16 bf16 |
  a4. gs8 a8 cs8 |
  d4. c8 f8 bf,8 |
  \time 2/4  s2. bf8 a8 |
  d8 a'8 r16 g16 a16 f16 |
  g8 d'8 r16 c16 d16 bf16 |
  c,8 g'8 r16 f16 g16 e16 |
  f8 c'8 r16 bf16 c16 a16 |
  bf,8 f'8 r16 e16 f16 d16 |
  e8 bf'8 r16 a16 g16 f16 |
  d8 f8 g8 bf,8 |
  \time 3/4  a4. e'8 d8 cs8 |
  \numericTimeSignature\time 4/4  d4. e8 d8 c8 b4 |
  \time 2/4  a8 e'8 f8 d8 |
  e8 a8 b8 d8 |
  c8 b8 a16 f16 g16 e16 |
  f16 e16 d16 f16 g16 f16 e16 d16 |
  e8 gs8 a8 a,8 |
  d8 f8 e8 d8 |
  c8 e'8 r16 c16 b16 a16 |
  \time 3/4  gs16 b16 d,16 e16 f16 e16 d16 f16 g16 e16 f16 d16 |
  c8 \times 2/3 {
    d16 c16 b16 }
  c8 d8 e8 c8 |
  f8 \times 2/3 {
    g16 f16 e16 }
  f8 g8 a8 f8 |
  e16 bf'16 a16 g16 f16 e16 d16 b16 c8 \times 2/3 {
    d16 c16 b16 }
  |
  c8 cs8 d8 \times 2/3 {
    e16 d16 cs16 }
  d8 ds8 |
  e8 \times 2/3 {
    fs16 e16 ds16 }
  e8 fs8 g8 e8 |
  a8 \times 2/3 {
    b16 a16 gs16 }
  a8 b8 c8 a8 |
  g16 c16 b16 a16 g16 fs16 e16 ds16 e16 a16 g16 fs16 |
  e16 d16 c16 b16 c16 f16 e16 d16 c16 b16 a16 gs16 |
  a4 gs4. b8 |
  a8 e'8 f8 d8 a8 d8 |
  g,8 a8 bf8 a16 g16 a4 |
  d,4. e8 f8 d8 |
  g4. a8 bf8 g8 |
  f4 f'4 bf4 |
  a8. g16 f8 d8 cs8 a8 |
  a'4 s2 |
  <d,, d'>2. \bar "|."
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  }
  <<
    \new Staff = "upper" \upper_staff
    \new Staff = "lower" \lower_staff
  >>
}
