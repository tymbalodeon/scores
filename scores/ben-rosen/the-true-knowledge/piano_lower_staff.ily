lower_staff = \relative ds,, {
  \clef "bass"

  \partial 2
  r2

  | <ds ds'>4. -- r16 as''16 -\p -\< b16 cs16 f16 ds16 e16 fs16 as16 c,16
  | cs16 ds16 g16 gs16 a16 b16 ds8 r4 -\! r8 b8 ~ -\! -\f
  | <fs b e>4 -> -\> <ds gs cs>4 -\! <b e a>4 -\< <f' bf ef>4 -\! -\! -\>
  | <d g c>4 r4 r4 r8 <c,, c'>8 ~ -> ~

  | <c c'>4 r8 b''8 ~ <fs b e>8 -. -> r4 cs'8 ~
  | <a cs es>8 -. -> r8 r4 r8 b,8 e8 cs8
  | \tuplet 3/2 { f4 d4 bf4 } r8 a'8 d8 b8
  | \tuplet 3/2 { ef4 c'4 af4 } \tuplet 3/2 { r4 d,4 b'4 }

  | g'4 r4 r2
  | r2 <e,, b'>4 <cs a'>4
  | <bf, bf'>1
  | R1

  | r2 r4 r8 cs'''8 ~ -\f
  | <gs cs fs>4 -\! -\> <es as ds>4 <cs fs b>4 -\! -\< <g' c f>4 -\! -\! -\>
  | <e a d>8 ds'8 ~ -\< <as ds gs>4 -\! -\> <fs b es>4 -\! r4
  | r8 cs,8 gs8 b8 \tuplet 3/2 { g4 bf4 d,4 }

  | r8 ds''8 as8 cs8 \tuplet 3/2 { a4 c4 e4 }
  | r8 f8 c'8 ef8 fs8 cs8 ~ <gs cs fs>8 -. -> r8

  \time 5/4

  | r8 ds'8 ~ <b ds g>8 -. -> r8 r2.

  \time 4/4

  | <d,,, d'>2. -> <b b'>4 ~ ->
  | <b b'>2 r2
  | r4 r8 ds''8 ~ <as ds gs>4 <cs, fs b>4
  | <f, bf ef>4 <b' e a>4 <cs,, cs'>2 ->
  | \clef "treble"
    r8 ds''''8 ~ <as ds gs>4. ->
    \ottava #1
    es''8
    \ottava #0
    <cs es a>4 ->
  | \clef "bass"
    r16 e,,,16 ds16 cs16 a16 b16 as16 gs16 e16 d16 cs16 b16 g16 gf16 f16 ef16
  | \tuplet 3/2 { d4 -> d'4 fs4 } r8 ds8 as8 cs8
  | e,2 -> a2 ->
  | ds,2 -> r2

  \bar "|."
}
