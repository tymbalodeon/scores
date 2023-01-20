upper_staff = \relative b {
  \partial 2
   <b e>4 -\p <a cs>

  | \ottava #1
    <c'' c'>4. --
    \ottava #0
    r8 g,4 -\mf af'4
  | bf,4
    << {

      d8 -\f f8 s4

    } \\ {

      r8 b, ~ <fs b e>4 ->

    } >>
    <ds gs cs>
  | <b' e a>4 -\< <f' bf ef> -\! -\> <d g c> -\! r8 cs ~ -\! -\<
  | <gs cs fs>4 -> -\> <e a ds>4 -\! r4 r8
    \ottava #1
    <ds'' ds'>8 ~ -> ~ -\f
  | <ds ds'>4
    \ottava #0
    r8 f,, ~ -\p -\< <c f bf> -. -> r4 g'8 ~ -\!

  | <ef g b>8 -. -> r8 r4 r8 b -\f e cs
  | f8 bf ef, c \tuplet 3/2 { e4 cs' a }
  | f8 g c a \tuplet 3/2 { cs4 as' fs }
  | \tuplet 3/2 { b4 -\> gs e ~ } \tuplet 3/2 { <b e> ~ ~ <fs b e> <ds gs cs> }

  | <b e a>4 <g c f> <b fs'> -\! -\p -\markup{ \bold {A tempo} } <a' cs>4
  | \ottava #1
    <g'' g'>1 -\mf
    \ottava #0
  | R1
  | r4 r8 cs,,8 ~ -\f -\< <gs cs fs>4 -\! -\> <es as ds>4 -\! -\<

  | <cs' fs b>4 -\! -\> <g c fs>4 <e a d>4 -\! r8 ds'8 ~ -\<
  | <as ds gs>4 -\! -\> <fs b es>4 -\! <ds gs cs>4 r4

  \clef "bass"

  | r8 cs8 -\f gs8 b8 g8 -\< d8 a'8 c8
  | \tuplet 3/2 { af4 cf4 ef4 }
    \clef "treble"
    g8 ef8 b'8 d8
  | \tuplet 3/2 { bf4 df4 f4 } r8 -\! g,8 ~ <d g c>8 -. -> r8

  \time 5/4

  | r8 a'8 ~ <f a cs>8 -. -> r8
    \ottava #1
    <f'' f'>2 -> s4
    \ottava #0

  \time 4/4

  | r2.
    \ottava #1
    <c' c'>4 ~ -> -\! -\f
  | <c c'>2
    \ottava #0
    r4 r8 ds,,8 ~ -\mf
  | <as ds gs>4 -\< <cs fs b>4 <f bf ef>4 <b e a>4
  | <d g c>4 r4 <e e'>2 -> -\! -\ff
  | <e,, a d>4. -> -\< b''8 ~ <g b ds>4. -> r16 d16 ( -\!
  | ds16 -\< es16 a16 ) g16 ( af16 bf16 d16 ) e,16 ( f16 g16 b16 ) c16 ( cs16 ds16 g16 ) fs16
  | g8 -> -\! -\ff c,,8 f8 ef8 r8 ds'8 -\< gs8 es8
  | \ottava #1
    b'2 ->
    \ottava #0
    cs2 -> -\!
  | \ottava #2
    c'2 -> -\fff
    \ottava #0 r2

  \bar "|."
}
