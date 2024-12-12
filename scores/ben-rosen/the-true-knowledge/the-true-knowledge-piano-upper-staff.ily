\version "2.25.21"
upper_staff = \relative b {
  \partial 2
   <b e>4 \p <a cs>

  | \ottava #1
    <c'' c'>4. --
    \ottava #0
    r8 g,4 \mf af'4
  | bf,4
    << {

      d8 f8 s4

    } \\ {

      r8 b, ~ \stemUp <fs b e>4 -> \f \> \stemNeutral <ds gs cs> \!
    } >>
  | <b' e a>4 \< <f' bf ef> \> <d g c> \! r8 cs ~ \<

  | <gs cs fs>4 -> \> <e a ds>4 \! r4 r8
    \ottava #1
    <ds'' ds'>8 ~ -> \f
  | <ds ds'>4
    \ottava #0
    r8 f,, ~ \p \< <c f bf> -. -> r4 g'8 ~

  | <ef g b>8 -. -> \! r8 r4 r8 b \f e cs
  | f8 bf ef, c \tuplet 3/2 { e4 cs' a }

  | f8 g c a \tuplet 3/2 { cs4 as' fs }
  | \tuplet 3/2 { b4 \> gs e ~ } \tuplet 3/2 { <b e> ~ ~ <fs b e> <ds gs cs> }

  | <b e a>4 <g c f> \tempo "A tempo" <b fs'> \p <a' cs>
  | \ottava #1
    <g'' g'>1 \mf
    \ottava #0
  | R1

  | r4 r8 cs,, ~ \f \< <gs cs fs>4 \> <es as ds> \<
  | <cs' fs b>4 \> <g c fs> <e a d> \! r8 ds' ~ \<
  | <as ds gs>4 \> <fs b es> \! <ds gs cs> r

  \clef "bass"

  | r8 cs \f gs b g \< d a' c
  | \tuplet 3/2 { af4 cf ef }
    \clef "treble"
    g8 ef b' d

  \tuplet 3/2 { bf4 df f \! } r8 g, ~ <d g c> -. -> r

  \time 5/4

  | r8 a' ~ <f a cs> -. -> r
    << {

      \ottava #1
      <f'' f'>2. ->
      \ottava #0

      } \\ {

        r4 <ds, gs> \mp <es cs'>

      } >>

  \time 4/4

    <d' d'>2.
    <c c'>4 ~ -> \f
  | <c c'>2
    r4 r8 ds, ~ \mf

  | <as ds gs>4 \< <cs fs b> <f bf ef> <b e a>
  | <d g c>4 r \!
    << {

      <e e'>2 -> \ff

    } \\ {

      r4 r8 a,, ~
      | <e a d>4. ->

    } >>

    b''8 \< ~ <g b ds>4. -> r16 d (

  | ds16 es a ) g ( af bf d ) e, ( f g b ) c ( cs ds g ) fs16
  | g8 -> \ff c,, f ef r ds' \< gs es
  | \ottava #1
    b'2 ->
    cs2 ->
  | \ottava #2
    c'2 -> \fff
    \ottava #0 r2

  \bar "|."
}
