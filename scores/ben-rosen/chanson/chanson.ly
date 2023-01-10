\version "2.24.0"

\include "settings.ily"

\header {
  title = "Chanson"
  poet = "Oscar Wilde"
  composer = "Ben Rosen"
}

key_time_and_tempo = {
  \tempo 4=60
  \key b \major
  \time 2/2
}

words = \lyricmode {
  A ring of gold and a milk -- white dove
      Are good -- ly gifts for thee,
  And a hemp -- en rope for your own love
      To hang u -- pon a tree.

  For you __ a House of I -- vor -- y,
      (Ros -- es are white in the rose -- bow -- er)!
  A nar -- row bed for me to lie,
      (White, O white, is the hem -- lock flow -- er)!

  Myr -- tle and jess -- a -- mine for you,
      (O __ the red __ rose is fair to __ see)!
  For me the cy -- press and the rue,
      (Fi -- nest of all __ is rose -- mar -- y)!

  For you three lov -- ers of your hand,
      (Green grass where a man lies dead)! __
  For me three pac -- es on the sand,
      (Plant li -- lies at my head)! __
}

soprano =  \relative cs'' {
  \key_time_and_tempo

  % measure 1
  R1 * 5 |

  % measure 6
  r8 cs \( -\mp ds gs, fs ( ds ) e fs |

  % measure 7
  b4 -\markup \italic "poco cresc." cs ds ( fs ) \) |

  % measure 8
  \time 5/4
  r4 r8 cs \( -\mf as -\markup \italic "poco decresc." fs b4 as |

  % measure 9
  \time 3/4
  gs2 \) r4 |

  % measure 10
  \time 2/2
  r8 e'16 \( -\mp ds cs8 b gs ds e fs ~ |

  % measure 11
  fs gs \) r b \( -\markup \italic "sub." -\mf fs'4. -> cs8 |

  % measure 12
  cs e ds4. \) r8 ef4 \( -\markup \italic "cresc."

  % measure 13
  \key df \major
  f8 ( bf, ef ) df c16 ( bf ) a8 gf'8. f16 |

  % measure 14
  d4 \) r af16 ( -\mp bf ) gf ef f8 -\< df16 ef -\! |

  % measure 15
  ff8. ( _\> ef16 ) df8 df r4 _\! r8 af' \( _\mf |

  % measure 16
  ef' gf f bf, ef -\markup \italic "cresc." df16 ( c ) a4 \) |

  % measure 17
  \key c \minor
  r ef \( -\mp bf'8 a4 g16 f |

  % measure 18
  \time 5/4
  g8 -\> ef d4 c \) -\! -\p r2

  % measure 19
  \tempo 4=70
  \key ef \minor
  \time 6/4
  R1. |

  % measure 20
  \time 4/4
  R1 * 2 |

  % measure 22
  af'8 ( -\mf -\< bf16 gf
  \tuplet 3/2 { f8 ) ef' df }
  gf,16 ( bf c df f8. ) -\! -\f ef16 |

  % measure 23
  ef8 gf
  \tuplet 3/2 { cf, ( _\> bf af ~ }
  af4 ) -\! -\mp r |

  % measure 24
  \time 3/4
  R2. |

  % measure 25
  \time 4/4
  \key gs \minor
  \tuplet 5/4 { gs16 ( -\mf a gs fs ) e }
  b'8. ( ds,16 ) ds8 cs e8. fs16 ~ |

  % measure 26
  \time 2/4
  fs8 gs ~ gs r |

  % measure 27
  \time 4/4
  r8. gs16 a8 ( b16 ) gs fs ( b
  e ds  cs ) gs b e |

  % measure 28
  fs8 ( gs ) r4
  \tuplet 6/4 { b,16 ( -\mp cs b ) as ( gs ) fs }
  \tuplet 3/2  { gs8 ( cs, ) e } |

  % measure 29
  fs8. ( gs16 ) as8 ds r fs -\markup \italic "sub."
  -\mf e -\< ds -\! |

  % measure 30
  gs -\f ( cs, b ) as b cs gs4 |

  % measure 31
  r8 fs _\< \tuplet 3/2 { as b cs }
  e fs as4 ~ -\! -\ff -\markup \italic "con passione" ( |

  % measure 32
  \time 3/4
  as4. b,8 ~ b4 ) |

  % measure 33
  \time 4/4
  R1 - "rit." |

  % measure 34
  \time 5/4
  r8 -\markup \bold "A tempo" cs -\mp ds gs, fs ds ~
  \tuplet 3/2  { ds e _\> fs } cs4 _\! |

  % measure 35
  \time 2/2
  r8 ds _\p _\< e fs b4 cs _\!
  _\mp |

  % measure 36
  as2. _\> ( gs4 ~ _\! |

  % measure 37
  gs2 _\pp ) r

  \bar "|."
}

upper_staff =  \relative fs' {
  \key_time_and_tempo

  % measure 1
  <fs as b ds>2 -\p r4 r8 ( -\< gs |

  % measure 2
  as4 ds8 es fs4 -\f -\> as ) |

  % measure 3
  r4 -\mp -\markup \italic "piu tranquillo" s <cs ds>4. ( b8 |

  % measure 4
  as fs ds gs, )
  \tuplet 6/4  {
    as ( cs ds,
    \change Staff = "lower"
    cs as fs )
  } \change Staff = "upper" |

  % measure 5
  <gs as>4 <b e>2. -> -\mf -\> |

  % measure 6
  s1 |

  % measure 7
  s2 -\p fs''16 ( es cs gs
  \change Staff = "lower"
  b,
  \change Staff = "upper"
  cs as fs ) |

  % measure 8
  \time 5/4
  \clef "bass"
  es ( as cs
  \clef "treble"
  gs' -\< ds es as gs fs ds cs8 ~ cs ) -\! <ds e gs>8 -_ -\f r4 |

  % measure 9
  \time 3/4
  r8 -\mp r ( cs' ) -. -> r r <ds e fs b> ~ -\p |

  % measure 10
  \time 2/2
  <ds e fs b>8 -\mp s4. r2|

  % measure 11
  \change Staff = "lower"
  gs,,16 e,
  \change Staff = "upper"
  b''' ( ds, ) r fs' ( cs' as )
  r as, ( ds, cs ) r8. <b' as'>16 ( ~ |

  % measure 12
  <b ds gs> ) -. <gs cs> ( <as b> fs' )
  \tuplet 6/4  {
    ds ( as e fss
    \change Staff = "lower"
    cs ds, )
  } \change Staff = "upper"
  r4 <gf' a df>

  % measure 13
  \key df \major
  \change Staff = "lower"
  bf,, ( -\! -\markup \italic "sub." -\mp -\< g' c
  \change Staff = "upper"
  f bf ef a f g df g, f
  \clef "bass"
  ef af, bf ef, ) |

  % measure 14
  \clef "treble"
  <g c f a>4 -\mf <f' af c> ( -\markup \italic "sub." -\p -\<
  <af df> <a c af'> -\! -\markup \italic "espressivo" |

  % measure 15
  <a ef'> -\mf <af af'> gf'16 f c df <c ef>
  \change Staff = "lower" |

  % measure 16
  bf,,
  \change Staff = "upper"
  c' a ef' df g, f'8 g af <f bf>8 <c d f a>4 ) |

  % measure 17
  \key c \minor
  <ef f a>1 ~ -\mp |

  % measure 18
  \time 5/4
  <ef f a>8 <bf' g'> ~ \arpeggio <bf g'>4 r8
  -\p s d -. r r4
  \key ef \minor
  \time 6/4
  \clef "bass"
  <af, bf ef f>4. -\f <f bf df gf> <gf bf cf ef>4 <bf ef> -\> <af df> |

  % measure 19
  \time 4/4
  <gf af df f>2 r4 -\!
  \clef "treble"
  <df' f gf af> \arpeggio |

  % measure 20
  \tuplet 3/2 { r8 -\mf <f, df'> <f df'> }
  \tuplet 3/2 { f' ef df }
  \tuplet 3/2 { r _\> <f, df'> <f df'> }
  \tuplet 3/2 { f' gf ef } _\! |

  % measure 21
  \tuplet 3/2 { r8 _\mp <af, df>8 <af df>8 }

  \tuplet 3/2  {
    f'8 bf8 af8 }
  \tuplet 3/2  {
    r8 <af, df>8 <af df>8 }

  \tuplet 3/2  {
    df'8 af8 gf8 }
  |3
  \tuplet 3/2  {
    r8 <gf, bf>8 af'8 }

  \tuplet 3/2  {
    f8 gf8 af8 ~ }

  \tuplet 3/2  {
    af8 gf8 ef8 }
  \tuplet 3/2  {
    b8 c16 ~ }
  c8 ~ |4
  \time 3/4
  \tuplet 3/2  {
    c8 _\> cs8 e8 ~ }
  <gs, a'>8 _\! <a gs'>8
  \tuplet 3/2  {
    ds8 _\! _\< e8 gs,8 }
  \bar "||"
  \time 4/4  \key gs \minor \tuplet 3/2 {
    r8 _\mf <b cs>8 <a cs>8 }

  \tuplet 3/2  {
    e'8 fs8 ds8 }
  \tuplet 3/2  {
    r8 <a b>8 ds8 }

  \times 2/3  {
    e8 b'8 cs8 }
  |6
  \time 2/4  \times 2/3 {
    r8 <fs, gs>8 <ds gs>8 }

  \times 2/3  {
    <e fs ds'>8 b'8 a8 }
  |7
  \time 4/4  \times 2/3 {
    r8 <ds, gs>8 cs'8 }

  \times 2/3  {
    <fs, b e>8 gs'8 <cs, fs>8 }
  \times 2/3  {
    r8 <ds gs>8 ds'8 }

  \times 2/3  {
    fs8 b,8 gs8 }
  |8
  \times 2/3  {
    r8 <gs, cs>8 <gs cs>8 }

  \times 2/3  {
    <ds b'>8 gs8 fs8 }
  \times 2/3  {
    r8 <fs as b ds>8 <cs' as'>8 }

  \times 2/3  {
    <ds fs b>8 b8 <as cs fs>8 }
  |9
  <fs b e>8 ( <cs' ds gs>8 <gs cs fs>8 <cs, e fs b>8 ) r8 <ds fs gs
                                                           cs>8 _\f _\< <cs fs b>4 ~ ~ ~ | \barNumberCheck #30
  <cs fs b>8 <fs as ds>4 <e as ds fs>8 ~ ~ ~ ~ <e as ds fs>4 <b' cs
                                                              gs'>4 _\! |1
  r8 _\ff <ds, gs b>8 ~ ~ ~ <ds gs b>2 <ds fs b>4 |2
  \time 3/4  r4 _\fff <cs' cs'>2 |3
  \time 4/4  s8*5 e,8 ~ e8 fs8 ~ |4
  \time 5/4  fs8 s8*5 \clef "bass" s2 |5
  \time 2/2  <e, as>2. r4 |6

  \clef "treble"
  r4 -\p -\> cs'4 ( <b ds>2 ~ -\! |
  <b ds>2 ) -\pp r2

  \bar "|."
}

upper_staff_two =  \relative ds' {
    \clef "treble" \time 2/2 \key b \major s2. ds4
    ~ |
    ds8 fs8 gs4 <e b'>2 s1*2 |
    r2 as2 ~ -> |
    as4 s4*7 |
    \clef "bass" \time 5/4 s8. \clef "treble" s16*17 |
    \time 3/4  s2. | \barNumberCheck #10
    \time 2/2  \change Staff = "lower" cs,,16 ( b'16
    \change Staff = "upper" gs'16 e16 ds16 fs16 \change Staff = "lower" ds'16 cs16 )
    \change Staff = "upper" e16 ( ds'16 b16 \change Staff = "lower" cs,16 \change
    Staff = "upper" gs'16 \change Staff = "lower" fs,16 \change Staff = "upper" as16 b16 )
    ~ |1
    b8 s8*7 s2 r8 df,8 ( ef8 \change Staff = "lower" af,8 ) \bar "||"
    \key df \major s2. \clef "bass" s4 |4
    \clef "treble" \change Staff = "upper" s1 |5
    df'8 ( b8 ef8 df8 ) <a c>4 f16 df16 af'16 ef16 s1 \bar "||"
    \key c \minor s2 r4 <ef' f d'>4 |8
    \time 5/4  s4*5 \bar "||"
    \clef "bass" \time 6/4 \key ef \minor s1 f,,2 | \barNumberCheck #20
    \time 4/4  s2. \clef "treble" s4 |1
    r8 <af bf>8 \times 2/3 {
        af4 bf8 }
    r8 <af bf>8 \times 2/3 {
        af4 bf8 }
    |2
    r8 <f ef'>8 \times 2/3 {
        <af df>4 <bf ef>8 }
    r8 <f ef'>8
    \times 2/3  {
        bf8 df8 bf8 }
    |3
    r8 ef8 \times 2/3 {
        ef4 bff8 }
    \times 2/3  {
        b8 af4 }
    <fs e'>4 ~ ~ |4
    \time 3/4  \times 2/3 {
        <fs e'>8 <gs fs'>4 }
    e'4 s4 \bar "||"
    \time 4/4  \key gs \minor r8 <gs, e'>8 r4 r8
    gs'8 r4 |6
    \time 2/4  r8 <e b'>8 r4 |7
    \time 4/4  r8 <cs fs b>8 r4 r8 <cs' fs b>8
    \times 2/3 {
        gs'4 fs8 }
    |8
    r8 <fs, b ds>8 r4 r8 e'8 r4 s1 s1 s1 |2
    \time 3/4  r8 <as,, b ds fs>8 ~ ~ ~ ~ <as b ds fs>2 |3
    \time 4/4  as''16 gs16 fs16 b,16 cs16 as16 gs16
    fs16 cs16 ds16 <b ds>8 ~ ~ <b ds>4 |4
    \time 5/4  s2. \clef "bass" s2 |5
    \time 2/2  s1 |6
    \clef "treble" s4 as8 gs8 s1. \bar "|."
    }

lower_staff = \relative cs' {
  \key b \major
  \time 2/2
  \clef "bass"

  r8 cs ds gs,
  << {
    r8 cs4. ~ |
    cs4 <b cs> r ds
  } \\ {
    fs,2 |
    e4 ds <cs gs'>2 |
  } >>

  gs8 as'
  \change Staff = "upper" b' fs' s2 |
  \change Staff = "lower"
  R1 |
  <ds,, es>4 <cs fs gs>2. |

  gs16 ds' as'
  \change Staff = "upper" cs b' fs
  \change Staff = "lower"
  \clef "treble" cs' gs' ds
  \change Staff = "upper" as b fs
  \change Staff = "lower"
  \clef "bass"
  gs,
  \change Staff = "upper" cs
  \change Staff = "lower" ds, fs, |
}
% lower_staff =  \relative cs' {
%     \clef "bass" \time 2/2 \key b \major |
%     r8 cs ds gs, r8 cs4. ~ |
%     cs4 <b cs>4 r4 ds4 -- |
%     gs,,8 as'8 \change Staff = "upper" b'8 fs'8 \change Staff = "lower" r2 |
%     r2 _\< r4 s4 |
%     <ds,, es>4 -- <cs fs gs>2. -> _\! |
%     gs16 ds'16 as'16 \change Staff = "upper" cs16 b'16 fs16 \clef "treble"
%     \change Staff = "lower" cs'16 gs'16 ds16 \change Staff = "upper" as16 b16 fs16
%     \clef "bass" \change Staff = "lower" gs,16 \change Staff = "upper" cs16 \change
%     Staff = "lower" ds,16 fs,16 |
%     e16 _\! _\< ds'16 \change Staff = "upper" gs16 cs16 fs16 \clef "treble"
%     \change Staff = "lower" b16 <cs ds>16 as16 r4 \clef "bass" r8. <ds,,, as'>16
%     ~ -> ~ _\mf _\markup{ \italic {sonoro} } |
%     \time 5/4  <ds as'>2 r16 gs'16 b16 e,16 ds8 -. _\markup{
%         \italic {secco} } cs'8 -_ r4 |
%     \time 3/4  r8 _\! \sustainOn _\<
%     \times 4/5  {
%         gs,32 ds'32 as'32 \change Staff = "upper" b32 fs'32 }
%     \change Staff = "lower" r2 | \barNumberCheck #10
%     \time 2/2  s4. _\markup{ \italic {piu
%             calmando} } \clef "treble" r8 b8 r8 r8 cs,16 ds16 |1
%     \clef "bass" s4 _\< \clef "treble" fs'16 ds16 fs,8 b,8 fs8 \clef
%     "bass" e16 gs16 fs'8 ~ |2
%     <fs as>16 -. _\! -\! -\> ds16 cs16 <b ds>16 r4 gss,4 -> <f' c'>4 _\f
%     \bar "||"
%     \key df \major s4 r8 \clef "treble" g'8 ef8 bf8 r8 \clef "bass" df,16
%     g,16 |4
%     <ef bf'>4 -- <df'' ef>4 <f, bf ef>4 <ef df'>4 |5
%     <gf df'>4 <f df'>4 <f ef'>4 <cf a'>4 s4 r8 df16 af'16 c16 bf16 g16 a16
%     <ef g bf>8 d8 \bar "||"
%     \key c \minor <c g' bf>1 ~ ~ ~ \clef "treble" |8
%     \clef "bass" \time 5/4 <c g' bf>8 <af f' c'>8 ~ ~ ~ <af f' c'>4 r8
%     \times 4/5  {
%         c,32 g'32 ef'32 \change Staff = "upper" bf'32 f'32 }
%     \change Staff = "lower" r2 \bar "||"
%     \time 6/4  \key ef \minor r8 _\markup{ \italic {ben sonore} }
%     df,4 ef4 af,8 ~ af4 ~ <df, af'>2 \change Staff = "upper" _\markup{
%         \italic {molto espressivo} } | \barNumberCheck #20
%     \time 4/4  \change Staff = "lower" ef2 \ottava #0
%     \ottava #-1 ef,2 |1
%     df''8 ef,8 gf'8 f8 df8 ef,8 gf'8 f8 |2
%     bf,8 ef,8 gf'8 f8 ef8 bf8 gf8 f8 |3
%     ff8 df'8 cf8 _\< gf'8 ff8 df8 r8 <d, a'>8 ~ ~ _\! _\f |4
%     \time 3/4  <a' d>4 <fs cs'>2 \bar "||"
%     \time 4/4  \key gs \minor e'8 fs,8 cs''8 gs8 e8
%     fs,8 cs''8 gs8 |6
%     \time 2/4  e8 fs,8 cs''8 fs,8 |7
%     \time 4/4  e16 cs,16 ds'8 cs8 a8 b8 cs,8 e'8 ds8
%     |8
%     b8 cs,8 e'8 ds8 gs,8 cs,8 e'8 ds8 s2 r8 <e b'>8 s4 s1 |1
%     r8 as8 ~ as4 ~ as4 <e as cs>4 |2
%     \time 3/4  r16. <gs,, gs'>32 ~ ~ <gs gs'>8 ~ ~ <gs gs'>2 \clef
%     "treble" |3
%     \time 4/4  fs'''8 \clef "bass" cs8 b8 as8 fs8
%     <cs gs'>8 ~ ~ <cs gs'>4 |4
%     \time 5/4  gs16 as'16 \change Staff = "upper" cs16 ds16 b'16 fs16 \clef
%     "treble" \change Staff = "lower" cs'16 gs'16 ds16 \change Staff = "upper" as16 b16
%     fs16 \clef "bass" \change Staff = "lower" gs,16 \change Staff = "upper" cs16 b16
%     as16 fs8 gs8 |5
%     \time 2/2  \change Staff = "lower" cs,,2. r4 |6
%     r8 ds'8 ~ ds2. ~ |7
%     <gs, ds'>2 r2 \bar "|."
%     }

lower_staff_two =  \relative cs' {
    \clef "bass" \time 2/2 \key b \major |
    s2 fs2 \change Staff = "upper" \change Staff = "lower" _\markup{
        \italic {esspressivo} } |
    e4 ds4 <cs gs'>2 s1*2 s8*11 \clef "treble" s4. \clef "bass" s16*9
    \clef "treble" s16*7 \clef "bass" s4 |
    \time 5/4  s4*5 |
    \time 3/4  s2. | \barNumberCheck #10
    \time 2/2  s4. \clef "treble" s8*5 |1
    \clef "bass" s4 \clef "treble" s2 \clef "bass" s4 s1 \bar "||"
    \key df \major s4. \clef "treble" s2 \clef "bass" s8 s1*2 s1 \bar
    "||"
    \key c \minor s2. \clef "treble" f,2 f'2 |8
    \clef "bass" \time 5/4 r4 r8 bf,,8 \bar "||"
    \time 6/4  \key ef \minor s1. | \barNumberCheck #20
    \time 4/4  s1 s1*2 s1 |4
    \time 3/4  d8 e8 s4 b''8 fs8 \bar "||"
    \time 4/4  \key gs \minor s1 |6
    \time 2/4  s2 |7
    \time 4/4  s1 s1 |9

    \times 2/3  {
        cs8 gs'8 fs8 }
    \times 2/3  {
        e8 ds4 }
    gs,4 <a gs'>4 ~ ~ | \barNumberCheck #30
    <a gs'>8 <b gs'>4 <cs b'>8 ~ ~ <cs b'>4 <ds as' fs'>4 |1
    e,2 ~ \times 2/3 {
        e4 <cs gs'>8 ~ ~ }
    <cs gs'>4 |2
    \time 3/4  s2 \clef "treble" as'''8 ds8 |3
    \time 4/4  s8 \clef "bass" s8*7 |4
    \time 5/4  s4. \clef "treble" s4. \clef "bass" r8 e,,8 ds16 cs16 b16
    gs16 |5
    \time 2/2  s1 |6
    gs1 ~ |7
    gs,2 s2 \bar "|."
    }

PartPTwoVoiceSeven =  \relative g' {
    \clef "bass" \time 2/2 \key b \major s1*4 s8*11
    \clef "treble" s4. \clef "bass" s16*9 \clef "treble" s16*7 \clef
    "bass" s4 |
    \time 5/4  s4*5 |
    \time 3/4  s2. | \barNumberCheck #10
    \time 2/2  s4. \clef "treble" s8*5 |1
    \clef "bass" s4 \clef "treble" s2 \clef "bass" s4 s1 \bar "||"
    \key df \major s4. \clef "treble" s2 \clef "bass" s8 s1*2 s1 \bar
    "||"
    \key c \minor s2. \clef "treble" g4 |8
    \clef "bass" \time 5/4 s4*5 \bar "||"
    \time 6/4  \key ef \minor s1. | \barNumberCheck #20
    \time 4/4  s1 s1*2 s1 |4
    \time 3/4  s2. \bar "||"
    \time 4/4  \key gs \minor s1 |6
    \time 2/4  s2 |7
    \time 4/4  s1 s1*2 s1 s1 |2
    \time 3/4  s2 \clef "treble" s4 |3
    \time 4/4  s8 \clef "bass" s8*7 |4
    \time 5/4  s4. \clef "treble" s4. \clef "bass" s2 |5
    \time 2/2  s1*3 \bar "|."
    }

PartPTwoVoiceThree =  \relative as''' {
    \clef "treble" \time 2/2 \key b \major s1*4
    s1*3 |
    \clef "bass" \time 5/4 s8. \clef "treble" s16*17 |
    \time 3/4  s2. | \barNumberCheck #10
    \time 2/2  s1*2 s1 \bar "||"
    \key df \major s2. \clef "bass" s4 |4
    \clef "treble" s1*2 s1 \bar "||"
    \key c \minor s1 |8
    \time 5/4  s4*5 \bar "||"
    \clef "bass" \time 6/4 \key ef \minor s1. | \barNumberCheck #20
    \time 4/4  s2. \clef "treble" s4 s1*2 s1 |4
    \time 3/4  s2. \bar "||"
    \time 4/4  \key gs \minor s1 |6
    \time 2/4  s2 |7
    \time 4/4  s1 s1*2 s1 s1 |2
    \time 3/4  s4. r16 \ottava #1 as16 _\mp gs16 fs16 b,16 \ottava #0 cs16
    |3
    \time 4/4  s1 |4
    \time 5/4  s2. \clef "bass" s2 |5
    \time 2/2  s1 |6
    \clef "treble" s1*2 \bar "|."
    }

upper_staff = {
  <<
    \upper_staff
    \\
    \upper_staff_two
  >>
}

\score {
  <<
    \new Staff \with {
      instrumentName = "Soprano"
    } {
      \soprano \addlyrics \words
    }
    \new PianoStaff \with {
      instrumentName = "Piano"
    } {
      <<
        \new Staff = "upper" \upper_staff
        \new Staff = "lower" \lower_staff
      >>
    }
  >>
}
