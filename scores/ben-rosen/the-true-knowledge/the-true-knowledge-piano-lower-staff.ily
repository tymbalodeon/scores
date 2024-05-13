\version "2.25.15"
lower_staff = \relative ds,, {
  \clef "bass"

  \partial 2
  r2

  | <ds ds'>4. -- r16 as'' ( \p \< b cs f ) ds ( e fs as ) c, (
  | cs16 ds g ) gs ( a b ds8 ) r4 \! r8 b ~ \f
  | <fs b e>4 -> \> <ds gs cs> <b e a> \< <f' bf ef> \>

  | <d g c>4 \! r r r8 <c,, c'> ~ ->
  | <c c'>4 r8 b'' ~ <fs b e> -. -> r4 cs'8 ~

  | <a cs es>8 -. -> r8 r4 r8 b, e cs
  | \tuplet 3/2 { f4 d bf } r8 a' d b

  | \tuplet 3/2 { ef4 c' af } \tuplet 3/2 { r d, b' }
  | g'4 r r2

  | r2 <e,, b'>4 <cs a'>
  | <bf, bf'>1

  | R1

  | r2 r4 r8 cs''' ~ \f
  | <gs cs fs>4 \! \> <es as ds> <cs fs b> \! \< <g' c f> \! \! \>
  | <e a d>8 ds' ~ \< <as ds gs>4 \! \> <fs b es> \! r
  | r8 cs, gs b \tuplet 3/2 { g4 bf d, }
  | r8 ds'' as cs \tuplet 3/2 { a4 c e }

  | r8 f c' ef fs cs ~ <gs cs fs> -. -> r

  \time 5/4

  | r8 ds' ~ <b ds g> -. -> r
    << {
      r4 <b fs'> <cs, a'>
    } \\ {

      <d,, d'>2. ->

    } >>

  \time 4/4

  | <f f'>2. -> <b, b'>4 ~ ->
  | <b b'>2 r

  | r4 r8 ds'' ~ <as ds gs>4 <cs, fs b>
  | <f, bf ef>4 <b' e a> <cs,, cs'>2 ->
  | \clef "treble"
    r8 ds'''' ~ <as ds gs>4. ->
    \ottava #1
    es''8
    <cs es a>4 ->
    \ottava #0

  \clef "bass"

  | r16 e,,, ( ds cs a ) b ( as gs e ) d ( cs b g ) gf ( f ef
  | \tuplet 3/2 { d4 -> ) d' fs } r8 ds as cs

  \ottava #-1

  | e,2 -> a2 ->
  | ds,2 ->

  \ottava #0

  r2

  \bar "|."
}
