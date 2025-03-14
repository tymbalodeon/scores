\version "2.25.24"
lower_staff = \relative fs' {
  \clef "bass"

  | fs2 \( gs4
  | es2 cs4
  | e2 e4
  | ds2 fs4
  | d2 b4
  | cs2 gs4
  | a2.
  | b2. \)

  | fs2.
  | es2 fs4
  | e2.
  | ds2.
  | d!2.
  | c2 fs4
  << {
    | gs4 a b
    | fs4 es2
  } \\ {
    | cs2. ~
    | cs2 b4
  } >>

  << {

    \relative fs {
      | fs4 \( e2
      | es4 ds2
      | e2 g4
      | gs4 es2
      | fs4 a2
      | b2 gs4
      | a4 gs2 ~
      | gs2 gs4 \)
    }

  } \\ {

    \relative a, {
      | a2 \( b4
      | gs2 d'4
      | cs4 ds2
      | b4 gs2
      | b2 d4
      | cs2 e4
      | ds2 fs4
      | cs2. \)
    }

  } >>

  << {

    \relative fs {
      | fs4 \( gs2
      | es4 g2
      | e2 es4
      | g2 es4
      | fs2 gs4
      | a2 g4
      | gs4 a gs
      | as4 a2 \)
    }

  } \\ {

    \relative a, {
      | a2 \( d4
      | b2.
      | cs2 b4
      | as2.
      | b4 cs2
      | c4 d2
      | cs2. ~
      | cs4 es2 \)
    }

  } >>

  << {

    \relative cs' {
      | cs8 d cs c b a
      | b4. c8 b4
      | gs4. fs8 es e
      | fs4 gs fs
      | fs4. a8 cs b
      | gs4. es8 gs4
      | a4. fs8 b a
      | gs4 a g
    }

  } \\ {

    \relative fs {
      | fs2.
      | es4 e ds
      | cs2.
      | b4 gs b
      | b8 cs es fs a gs
      | b,4 cs b
      | ds2.
      | es4 b cs
    }

  } >>


  << {

    \relative fs {
      | fs2.
      | es4 a es
      | gs2.
      | g4. fs8 g4
      | fs2.
      | fs4. e8 fs4
      | es4. -\< b8 d cs -\!
      | gs4
    }

  } \\ {

    \relative fs {
      | d4. a8 c b
      | b4. ds8 b4
      | cs8 fs e ds b d
      | cs4 ds cs
      | d2.
      | ds4 b ds
      | cs8 b a gs fs es
      | cs4 ->
    }

  } >>

  cs,8 _\< gs'8 c _\! es
  R2.
  e8 fs,8 r4 r4
  r8 es8 c'8 cs8 e,8 b'8
  a4. fs'16 ds16 <d, a'>4
  d'8 fs4 r8 r4
  gs8 b,4 r8 cs,4 -. ->
  R2.
  c4 -. -> cs4 ~ cs16 a'16 es'16 gs16

  cs2 r4
  a8 d,8 r8 c8 gs'8 ds'8 ~
  ds8 cs8 b8 gs8 d'8 g,8
  c,,8 g'8 <b fs'>2
  ds8 a8 <e b'>8 b'8 r4
  \clef "treble" gs'8 ds'8 as'8 r8 gs8 ds'8
  \once \omit TupletBracket
  \times 6/4  {
    cs,8 ds8 es8 gs8 }

  \once \omit TupletBracket
  \times 6/4  {
    a8 cs8 cs8 ds8 }

  e,4 g8 fs4.
  cs8 es8 gs8 fs8 es4
  \clef "bass" as,8 g8 es8 fs8 gs4
  ds8 d8 b8 d8 b8 as8
  fs4 b8 cs8 d4
  b8 fs8 a4 cs,8 b8 ~
  b8 d8 c4 r4
  r2 cs4 -. ->
  gs''8 a8 d8 fs,8 c'4
  a8 gs8 as8 b8 ds8 d8
  gs,8 cs8 c4 b16 e,8 es16
  g4 gs8 es8 d8 cs8
  <gs b'>8 as'8 a4 fs8 es8
  g8 gs8 c8 b8 ds,8 d8
  cs4 e4 es16 gs16 c,16 b16
  as4 es'8 d8 b8 as8
  <fs fs'>4 r4 fs'8 es8
  e4 as4 b8 cs8
  d8 fs,8 <c' d>8 cs8 a8 gs8
  <d b' cs>4 r4 cs'8 c8
  b4 gs8 g8 a8 as8
  ds8 d8 cs4 as8 a8
  d4 r2
  c8 e,8 g8 gs8 cs8 es,8
  gs8 a8 d8 fs,8 a4
  fs8 es8 r4 fs8 g8
  c8 e,8 as4 g8 fs8
  gs8 a8 d8 fs,8 c'4
  \ottava #-1 d,,8 cs8 c4 a8 gs8
  as8 b8 ds8 d8 fs,8 es8
  e4 g4 gs16 b16 ds,16 d16
  cs4 c'8 b8 as8 a8
  gs4 -. -> \ottava #0 r4 c''8 b8
  as4 g8 fs8 d'8 cs8
  <a c>4 -. -> r4 <a c>4 -. ->
  r4 <ds, gs>16 b16 as16 a16 gs16 d16 es16 cs16
  c4 -. -> r4 es'8 fs8
  b8 ds,8 a'4 g8 fs8
  <es cs'>4 -. -> r4 <fs b cs>4 -. ->
  r4 <e ds'>4 -. -> r4
  d16 ds16 gs16 g16 ds16 e16 cs'16 d16 ds16 a'16 e,8
  \clef "treble" cs'16 fs16 g16 as16 b16 d16 b16 d16 cs16 d16 cs16 d16

  \clef "bass" a,16 d16 a16 d16 as16 cs16 as16 cs16 a16 fs16 ds16 d16

  gs,16 e16 a16 d16 cs16 d16 c'16 a16 es16 fs16 es'16 e16
  \clef "treble" d16 g16 cs,16 a'16 a,16 as'16 a,16 as'16 as,16 ds16
  as16 ds16
  \clef "bass" es16 ds16 es16 ds16 g,16 e16 c'16 cs16 c16 b16 a16 d16

  gs,16 e'16 e,16 es16 ds16 b16 gs16 a16 gs16 g16 es16 as16
  e16 c'16 c,16 cs16 fs16 gs16 e16 es16 e16 ds16 cs16 fs16
  <fs cs'>2 -> d'4
  cs2 e4
  cs2 c4
  b2 <fs cs'>4
  <d a'>2 <b e>4
  <cs gs'>2 <a' cs>4
  <b, a'>2.
  <cs, cs'>2.
  <d' a'>2 <a' e'>4
  <as es'>2 <gs cs>4
  <a e'>2 <g d'>4
  <ds as'>2 <fs b>4
  b,2 <as fs'>4
  a2.
  <cs, cs'>2. ~ ~
  <cs cs'>2. ^\fermata
  fs'''2 gs4
  es2 cs4
  e2 e4
  ds2 fs4
  d2 b4
  cs2 gs4
  a2.
  b2.
  fs2.
  es2 fs4
  e2.
  ds2.
  d2.
  c2 fs4
  <cs gs'>2. ~ ~
  <cs gs'>2.
  <fs,, fs'>2. ~ ~
  <fs fs'>2. \bar "."
}
