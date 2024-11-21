\version "2.25.20"
part_one = {
  << {

    \relative a'' {
      | a2 \( -\p fs4
      | gs2 b4
      | as2 g4
      | gs2.
      | gs2 fs4
      | es2 d4
      | ds2.
      | cs2. \)

      | a2. \(
      | b2 a4
      | gs2.
      | g2.
      | fs2 es4
      | fs2 ds4
      | es4 fs4 gs4
      | a2 gs4 \)

      | fs4 \( gs2
      | b2 g4
      | gs2 e4
      | ds2 g4
      | gs4 fs2
      | gs4 as2
      | fs2 b4 ~
      | b2. \)

      | a4 \( fs2
      | gs4 es2
      | gs4 as2
      | cs4 b as
      | gs2 a4
      | fs2 e4
      | es2.
      | fs4 gs b \)

      | a2.
      | gs4. a8 gs4
      | as2.
      | b4. fs8 b4
      | gs2.
      | es4 e es
      | fs8 \( es ds a' gs fs \)
      | cs4 gs' es

      | fs2.
      | gs4 es gs
      | e4. \( g8 gs fs \)
      | ds4. e8 ds4
      | b8 \( cs d cs d cs \)
      | c4 ds c
      | cs2. \(
      | c4 \) ->
    }

  } \\ {

    \relative cs'' {
      | cs2 \( d4
      | cs2.
      | cs2 as4
      | b2 ds4
      | b2 a4
      | gs2 b4
      | fs2.
      | es2. \)

      | d2. \(
      | d2 b4
      | cs2.
      | as2.
      | b2 gs4
      | a2. \)
      | s2. * 2

      | cs2 \( d4
      | cs4 b2
      | as4 gs2
      | b2 cs4
      | d2 e4
      | es4 d2
      | c4 d2
      | es2. \)

      | d2 \( cs4
      | d2 ds4
      | cs c cs
      | ds2 cs4
      | d4 es2
      | ds4 c2
      | b4 d cs ~
      | cs4 c2 \)

      | fs4. e8 ds d
      | cs4 d cs
      | e8 fs g gs a as
      | ds,4. cs8 d4
      | d2.
      | cs4. b8 cs4
      | c2.
      | c4 cs gs

      | a8 as b c e ds
      | d4. c8 d4
      | as2.
      | as4 a as
      | gs4. a8 gs a
      | a4. gs8 a4
      | gs2.
      | es4
    }

  } >>
}

upper_staff = \relative a'' {
  \part_one

  r2
  c,,4 -\f fs4 ( cs8 a8
  r4 r8 ) gs'8 ( cs,8 b8 ~
  b8 ) r8 r4 as'8 ( e8
  ds8 b4 gs'4 b,8 )
  r4 r8 <d gs>8 ( fs8 cs8 )
  r4 r8 \clef "bass" es,8 r4
  <ds' e>8. ( -> a -> fs -> a, ) ->

  R2.
  \clef "treble" ds''4 -> cs4 <fs, as>8 ( e8 )
  R2.
  <es d'>8 ( gs4 ds8 <es a>8 b'8
  as8 ds8 ) r8 ds,8 ( d8 <gs b>8
  a8 fs8 ) r4 gs8 ( ds'8
  as'8 ) -> r8 \ottava #1 gs8 ( ds'8 as'8 ) -> \ottava #0 r8
  cs,,8 ( _\< ds8 es8 gs8 a8 c8
  \ottava #1 cs8 ds8 es8 gs8 a8 \ottava #0 c8 ) _\!
  a,,8 _\markup{ \small\italic {sub.} } _\mf c8 d4 r8 a8
  gs4 a4 r8 d,8
  e8 ds8 as8 d8 cs8 as8
  b8 cs8 as8 b8 <es fs>4
  d8 gs,8 as4 b8 <d fs a>8
  cs4 gs8 a8 gs4
  fs2 r4
  r2 <es a>4 -. -> _\f
  d''8 cs8 c4 a8 gs8
  as8 b8 ds8 d8 fs,8 es8
  e4 g4 gs16 b16 ds,16 d16
  cs4 c8 b8 as8 a8
  <gs es'>8 fs'8 b8 ds,8 a'4
  fs8 es8 g8 gs8 c8 b8
  es,8 as8 a4 gs16 cs,8 d16
  e4 a,8 gs8 g8 es8
  r4 d'8 cs8 c4
  gs'8 g8 cs8 c8 b4
  r4 fs8 es8 r4
  a8 gs8 g4 e8 ds8
  es8 fs8 b8 as8 a4
  fs8 es8 g8 gs8 cs8 c8
  <as e'>4 gs8 a8 d8 fs,8
  a8 as8 ds8 g,8 as8 b8
  e8 gs,8 b8 c8 cs4
  ds,8 e8 a8 cs,8 g'4
  e8 ds8 es8 fs8 b8 ds,8
  a'4 fs8 es8 g8 gs8
  d'8 ( _\ff cs8 c4 a8 gs8
  as8 b8 ds8 d8 fs,8 es8
  e4 g4 gs16 b16 ds,16 d16
  cs4 c8 b8 as8 a8 )
  d'8 ( cs8 b4 a8 gs8
  e'8 ds8 d4 b8 as8 )
  <fs b fs'>16 d'16 as16 a16 gs16 g16 fs16 es16 <b e b'>16 g'16 ds16 d16

  cs16 c16 b16 as16 <a c>8 d8 ds8 as'16 a16
  gs8 ( a8 d8 fs,8 c'8 as8
  b8 e8 gs,8 d'4 c8 )
  <gs c>16 ds16 fs16 a16 as16 cs16 ds16 fs16 gs16 b16 g16 fs16
  es16 e16 ds16 d16 <gs, b cs>16 e'16 c16 b16 as16 a16 gs16 g16
  as,16 _\fff b16 a'16 fs16 d16 ds16 d'16 cs16 b16 e16 as,16 fs'16
  fs,16 g'16 as16 g16 as16 g16 as16 g16 c16 as16 g16 fs16
  es16 ds16 b16 gs16 g16 as16 es16 ds16 d16 es16 c16 as16
  b16 gs16 g'16 fs16 d16 b16 d16 b16 c16 d16 c16 d16
  fs16 gs16 fs16 gs16 fs16 cs16 fs16 cs16 c'16 cs16 c16 cs16

  as16 fs16 as16 fs16 gs16 a16 g16 e16 c'16 cs16 c16 b16
  a16 d16 gs,16 e'16 \clef "bass" e,16 es16 ds16 c16 gs16 a16 gs16 g16

  es16 as16 e16 c'16 c,16 cs16 c16 gs16 e16 es16 e16 ds16
  fs'2 ( -> _\ff <fs b cs>4
  <es gs cs>2 <g c>4
  <fs as>2 <e fs>4
  <ds fs>2 <e a>4
  <fs b>2 <ds gs>4
  <cs es>2 <gs' b>4
  <ds fs>2.
  <gs, c es>2. )
  <fs' e'>2 ( <g b c>4
  <gs as d>2 <es b'>4
  <gs cs>2 <fs b>4
  <g cs>2 <d as'>4
  <d fs gs>2 <cs es>4
  <b c ds fs>2.
  <a b cs es gs>2. ~ ~ ~ ~ ~
  <a b cs es gs>2. ) ^\fermata
  \clef "treble" a'''2 ( _\pp fs4
  gs2 b4
  as2 g4
  gs2.
  gs2 fs4
  es2 d4
  ds2.
  cs2. )
  a2. (
  b2 a4
  gs2.
  g2.
  fs2 es4
  fs2 ds4
  es2. ~ _\>
  es2.
  <fs, a cs fs>2. ~ ~ ~ ~
  <fs a cs fs>2. ) _\!
  \bar "."
}
