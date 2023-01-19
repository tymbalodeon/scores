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

upper_voices_prelude_one = {
  << {

    \relative d'' {
      | d2 ~
      | d4 e16 d cs g'
      | e4 ~ e16 f e d
      | \tuplet 3/2 { e8 f a } g4 ~
      | g4 ~ \tuplet 3/2 { g8 e f }
      | \tuplet 3/2 { f8 e d } e4 ~
      | e4 \tuplet 3/2 { e8 d cs ~ }
      | cs2 ~
      | cs2 -\fermata

      | c2 ~
      | c4. bf8
      | a2 ~
      | a4. bf8
      | g8 a bf e,
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

upper_voices_prelude_two = {
  << {

    \relative fs' {
      | fs2.
      | g4. gs
      | fs8. gs16 as8 e8. e
      | fs8. a16 g8 fs e fs
      | b4. a8. g16 a8
      | g8 a b ~ b c b
      | gs16 a8 a16 gs8 gs16 a8 a16 gs8
      | a8 gs a g fs g
      | fs2. ^\fermata

      | fs8. fs fs e
      | d8. cs d4.
      | d4. e
      | e4. e
      | f8. a b b
      | cs8. cs cs cs
      | cs8. cs cs bf
      | a2. -\fermata
    }

  }  \\ {

    \relative d' {
      | d4. c8 b c
      | b4. d8 cs d
      | cs2.
      | d2.
      | fs2.
      | e8 fs g ~ g a g
      | e8 fs e d e8. d16
      | cs16 d8 d16 cs8 ~ cs d cs
      | cs2. -\fermata

      | cs8. cs d cs
      | b8. as b4.
      | b8. a b8 c d
      | c8. b as8 b c
      | c8. fs g gs
      | a8. g bf a
      | g8. f e f
      | e2. -\fermata
    }

  } >>
}

upper_voices_prelude_three = {
  << {

    \relative d {
      | d'2. ~
      | d8. f
      | e8. d
      | e8 d e g f e
      | f8. f
      | g8. a
      | bf4. g
      | a2.
      | f8 g f a g f
      | e8 f e g f e
      | d2.
      | d2.
      | e4. cs8 d e
      | e8 f g g a bf
      | bf8 a g a g f
      | g8 f e f e d
      | cs2. -"rit."
    }

  } \\ {

    \relative a {
      | a8 g a c bf a
      | bf2. ~
      | bf2.
      | d2.
      | d8 f e d e d
      | cs8. cs d e
      | c2.
      | c2.
      | a4. a8 g a
      | b8 c b ~ b4.
      | bf8 a bf a8.
        \change Staff = "lower"
        bf
    }

  } >>
}

upper_voices_fugue_one = {
  << {

    \relative a' {
      | a8 \tuplet 3/2 { b16 a gs }
      | a8 b c a
      | d8 \tuplet 3/2 { e16 d cs }
      | d8 e f d
      | c16 g' f e f bf a g f e d cs
      | d16 c bf a g8 a d cs
      | d4. cs8 a4
      | bf4. a8 g bf
      | a8 d16 e d8 g16 e
      | f8 r
    }

  } \\ {

    \relative c' {
      | c4. b8 a4
      | f'4. e8 d f
      | e8 d16 cs d8 cs16 a d c bf a
      | bf16 ef d c bf8 f g a
      | f'4. e8 d4
      | d4. cs8 d4
      | d8 e f bf a16 f g e
    }

  } >>
}

upper_staff = \relative e'' {
  \key_and_time

  \upper_voices_prelude_one

  | e8 d cs g' ~
  | g8 f e f \tuplet 3/2 { g8 a bf } \tuplet 3/2 { a8 d cs }
  | \tuplet 3/2 { d8 a bf } \tuplet 3/2 { g8 a f }
  | \tuplet 3/2 { d8 a f } d4

  \key b \minor
  \time 6/8

  \upper_voices_prelude_two

  \key d \minor

  \upper_voices_prelude_three

  \tempo 4 = 69
  \time 3/4

  | d8 \tuplet 3/2 { e16 d cs } d8 e f d
  | g8 \tuplet 3/2 { a16 g fs } g8 a bf g
  | f16 bf a g f e d cs d f e d

  \upper_voices_fugue_one

  d'8 \times 2/3 {
    e16 d16 cs16 }
  d8 e8 |
  f8 d8 gs8 \times 2/3 {
    a16 gs16 fs16 }
  gs8 a8 b8 gs8 |

  a8 e8 d8 f8 |
  e4 d4 |
  e4 c8 d8 |
  c4 b8 c8 |
  b4 r8 e8 |
  f8. a16 gs4 |
  e4 e8 r8 |
  b8. d16 c8. d16 c8 b8 |
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

lower_voices_prelude_one = {
  << {

    \relative a {
      | a4 ~ a8. c16
      | bf16 g a bf ~ bf4 ~
      | bf16 g a bf a4 ~
      | a4 ~ \tuplet 3/2 { a8 bf a }
      | g4. bf8
      | d4 ~ d8. cs16 ~
      | cs2
      | \tuplet 3/2 { g'8 f e ~ } e4 ~
      | e2 -\fermata

      | c2
      | bf8 a bf g
      | a2 ~
      | a8 g8 a8 f8
      | e4 g8 a
    }

  } \\ {

    \relative d {
      | d2 ~
      | d4 cs ~
      | cs4 d ~
      | d2 ~
      | \tuplet 3/2 { d8 e f } bf,4
      | d8 f a4 ~
      | a2 ~
      | a4 \tuplet 3/2 { b8 cs a ~ }
      | a2 -\fermata

      | f2 ~
      | f2
      | d8 c d a
      | bf2
      | a4 r
    }

  } >>
}

lower_voices_prelude_two = {
  << {

    \relative a {
      | a2.
      | g4. b
      | as4. ~ as8 gs as
      | b8 a8 b8 a4.
      | ds8. e16 ds8 b4.
      | b8. c16 b8 e8. e16 b8
      | b8 a8 b8 b8 cs8 b8
      | a8 b8 a8 ~ a16 b8 b16 a8
      | as2. -\fermata

      | r8 as8 as8 r8 b8 as8
      | r8 fs8 fs8 fs4.
      | fs4. g4.
      | g4. fs8. g
      | r8 a8 c8 r8 d8 e16 d16
      | r8 e8 e8 r8 g8 f8
      | r8 e8 d8 r8 cs8 d8
      | cs2. -\fermata
    }

  } \\ {

    \relative d {
      | d8 c d ef4.
      | d8 f d e4.
      | fs8 e cs ~ cs4.
      | b4. d8. e16 d8
      | b8 fs' b ds, fs b,
      | e2.
      | e8. fs16 e8 e4.
      | e2.
      | fs2. -\fermata

      | r8 fs e r d cs
      | r8 b cs b4.
      | b8 d fs e8. d
      | c8 d e cs4.
      | r8 f a r g b
      | r8 a a r a a
      | r8 a a r a a
      | a2. -\fermata
    }

  } >>
}

lower_voices_prelude_three = {
 << {

   \relative f {
    | f2.
    | g8 f g a g f
    | g2.
    | a8 bf a g f e
    | g8. a
    | bf8. g
    | e8 f g a bf g
    | a4. f8 g a
    | g2.
    | f8 g f ~ f4.
    | f2.
    | g4. e4.
   }

 } \\ {

   \relative d {
     | d2. ~
     | d2.
     | cs8. a e' cs
     | d2.
     | bf2.
     | a2.
     | f'8 e f f e d
     | c8. d16 c8 c d e
     | d2.
     | d4. d8 cs d
     | cs4. a
   }

 } >>
}

lower_staff = \relative b {
  \clef "bass"
  \key_and_time

  \lower_voices_prelude_one

  | bf8 g e' d

  \clef "treble"

  | cs4 a' ~
  | a8 e a e'
  | d2

  | r4
    \clef "bass"
    \tuplet 3/2 { r8 f,, g }

  \key b \minor
  \time 6/8

  \lower_voices_prelude_two

  \key d \minor

  \lower_voices_prelude_three

  | g8. bf bf a
  | g8. e f d
  | e8. cs d f
  | a,,8 e' a e' a e'

  \time 3/4

  | R2. * 7

  | d,8 \tuplet 3/2 { e16 d cs } d8 e f d
  | g8 \tuplet 3/2 { a16 g fs } g8 a bf g

  \time 2/4

  | f16 bf a g f e d cs
  | d8 e f d
  | g8 a bf g
  | c,8 d e c
  | f8 g a f
  | bf,8 c d bf
  | e8 f g e
  | a8 g f e
  | d8 cs a cs

  \time 3/4

  | d16 a' g e f d e cs d e f a
  | g16 d' c a bf g a fs g a bf g
  | a16 g f e d c bf a bf d c bf
  | a4. gs8 a cs
  | d4. c8 f bf,

  \time 2/4

  | c4. bf8
  | d8 c bf a
  | d8 a' r16 g a f
  | g8 d' r16 c d bf
  | c,8 g' r16 f g e
  | f8 c' r16 bf c a
  | bf,8 f' r16 e f d
  | e8 bf' r16 a g f
  | d8 f g bf,

  \time 3/4

  a4. e'8 d8 cs8 |
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
