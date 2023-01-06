\version "2.24.0"

\include "settings.ily"
\include "style.ily"

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

PartPTwoVoiceOne =  \relative fs' {
    \clef "treble" \numericTimeSignature\time 2/2 \key b \major | % 1
    <fs as b ds>2 -- _\p r4 r8 ( _\< gs8 | % 2
    as4 ds8 es8 fs4 \arpeggio _\! _\! _\f _\> as4 ) -- | % 3
    r4 _\mp _\markup{ \small\italic {piu tranquillo} } s4 <cs ds>4. ( --
    b8 | % 4
    as8 fs8 ds8 gs,8 ) \once \omit TupletBracket
    \times 4/6  {
        as8 ( cs8 ds,8 \change Staff="2" cs8 as8 fs8 ) }
    \change Staff="1" | % 5
    <gs as>4 -- <b e>2. -> _\! _\mf _\> | % 6
    s1. _\p fs''16 ( es16 cs16 gs16 \change Staff="2" b,16 \change
    Staff="1" cs16 as16 fs16 ) | % 8
    \clef "bass" \time 5/4 es16 ( as16 cs16 \clef "treble" gs'16 _\< ds16
    es16 as16 gs16 fs16 ds16 cs8 ~ cs8 ) _\! <ds e gs>8 -_ _\f r4 | % 9
    \time 3/4  r8 _\mp r8 ( cs'8 ) -. -> r8 r8 <ds e fs b>8 ~ -- ~ ~ ~
    _\p | \barNumberCheck #10
    \numericTimeSignature\time 2/2  <ds e fs b>8 _\mp s4. r2 \change
    Staff="2" | % 11
    gs,,16 e,16 \change Staff="1" b'''16 ( ds,16 ) r16 fs'16 ( cs'16 as16
    ) r16 as,16 ( ds,16 cs16 ) r8. <b' as'>16 ( ~ | % 12
    <b ds gs>16 ) -. <gs cs>16 ( <as b>16 fs'16 ) \once \omit
    TupletBracket
    \times 4/6  {
        ds16 ( as16 e16 fss16 \change Staff="2" cs16 ds,16 ) }
    \change Staff="1" r4 <gf' a df>4 \bar "||"
    \key df \major \change Staff="2" bf,,16 ( -\! _\markup{
        \small\italic {sub.} } _\mp -\< g'16 c16 \change Staff="1" f16
    bf16 ef16 a16 f16 g16 df16 g,16 f16 \clef "bass" ef16 af,16 bf16 ef,16
    ) | % 14
    \clef "treble" <g c f a>4 -- _\mf <f' af c>4 ( _\markup{
        \small\italic {sub.} } _\p _\< <af df>4 <a c af'>4 _\! _\markup{
        \small\italic {espressivo} } | % 15
    <a ef'>4 _\mf <af af'>4 gf'16 f16 c16 df16 <c ef>4 \change Staff="2"
    | % 16
    bf,,16 \change Staff="1" c'16 a16 ef'16 df16 g,16 f'8 g16 af16 <f
        bf>8 <c d f a>4 ) \bar "||"
    \key c \minor <ef f a>1 ~ ~ ~ _\mp | % 18
    \time 5/4  <ef f a>8 <bf' g'>8 ~ \arpeggio ~ \arpeggio <bf g'>4 r8
    _\p s8 d8 -. r8 r4 \bar "||"
    \clef "bass" \time 6/4 \key ef \minor <af, bf ef f>4. _\f <f bf df
        gf>4. <gf bf cf ef>4 <bf ef>4 _\> <af df>4 | \barNumberCheck #20
    \numericTimeSignature\time 4/4  <gf af df f>2 r4 _\! \clef "treble"
    <df' f gf af>4 \arpeggio -_ \arpeggio \arpeggio \arpeggio | % 21
    \times 2/3  {
        r8 _\mf <f, df'>8 <f df'>8 }
    \once \omit TupletBracket
    \times 2/3  {
        f'8 ef8 df8 }
    \times 2/3  {
        r8 _\> <f, df'>8 <f df'>8 }
    \once \omit TupletBracket
    \times 2/3  {
        f'8 gf8 ef8 }
    _\! | % 22
    \times 2/3  {
        r8 _\mp <af, df>8 <af df>8 }
    \once \omit TupletBracket
    \times 2/3  {
        f'8 bf8 af8 }
    \times 2/3  {
        r8 <af, df>8 <af df>8 }
    \once \omit TupletBracket
    \times 2/3  {
        df'8 af8 gf8 }
    | % 23
    \times 2/3  {
        r8 <gf, bf>8 af'8 }
    \once \omit TupletBracket
    \times 2/3  {
        f8 gf8 af8 ~ }
    \once \omit TupletBracket
    \times 2/3  {
        af8 gf8 ef8 }
    \times 2/3  {
        b8 c16 ~ }
    c8 ~ | % 24
    \time 3/4  \once \omit TupletBracket
    \times 2/3  {
        c8 _\> cs8 e8 ~ }
    <gs, a'>8 _\! <a gs'>8 \once \omit TupletBracket
    \times 2/3  {
        ds8 _\! _\< e8 gs,8 }
    \bar "||"
    \numericTimeSignature\time 4/4  \key gs \minor \times 2/3 {
        r8 _\mf <b cs>8 <a cs>8 }
    \once \omit TupletBracket
    \times 2/3  {
        e'8 fs8 ds8 }
    \times 2/3  {
        r8 <a b>8 ds8 }
    \once \omit TupletBracket
    \times 2/3  {
        e8 b'8 cs8 }
    | % 26
    \time 2/4  \times 2/3 {
        r8 <fs, gs>8 <ds gs>8 }
    \once \omit TupletBracket
    \times 2/3  {
        <e fs ds'>8 b'8 a8 }
    | % 27
    \numericTimeSignature\time 4/4  \times 2/3 {
        r8 <ds, gs>8 cs'8 }
    \once \omit TupletBracket
    \times 2/3  {
        <fs, b e>8 gs'8 <cs, fs>8 }
    \times 2/3  {
        r8 <ds gs>8 ds'8 }
    \once \omit TupletBracket
    \times 2/3  {
        fs8 b,8 gs8 }
    | % 28
    \times 2/3  {
        r8 <gs, cs>8 <gs cs>8 }
    \once \omit TupletBracket
    \times 2/3  {
        <ds b'>8 gs8 fs8 }
    \times 2/3  {
        r8 <fs as b ds>8 <cs' as'>8 }
    \once \omit TupletBracket
    \times 2/3  {
        <ds fs b>8 b8 <as cs fs>8 }
    | % 29
    <fs b e>8 ( <cs' ds gs>8 <gs cs fs>8 <cs, e fs b>8 ) r8 <ds fs gs
        cs>8 _\f _\< <cs fs b>4 ~ ~ ~ | \barNumberCheck #30
    <cs fs b>8 <fs as ds>4 <e as ds fs>8 ~ ~ ~ ~ <e as ds fs>4 <b' cs
        gs'>4 _\! | % 31
    r8 _\ff <ds, gs b>8 ~ ~ ~ <ds gs b>2 <ds fs b>4 | % 32
    \time 3/4  r4 _\fff <cs' cs'>2 | % 33
    \numericTimeSignature\time 4/4  s8*5 e,8 ~ e8 fs8 ~ | % 34
    \time 5/4  fs8 s8*5 \clef "bass" s2 | % 35
    \numericTimeSignature\time 2/2  <e, as>2. r4 | % 36
    \clef "treble" r4 _\p _\> cs'4 ( <b ds>2 ~ ~ _\! | % 37
    <b ds>2 ) _\pp r2 \bar "|."
    }

PartPTwoVoiceTwo =  \relative ds' {
    \clef "treble" \numericTimeSignature\time 2/2 \key b \major s2. ds4
    ~ | % 2
    ds8 fs8 gs4 <e b'>2 s1*2 | % 5
    r2 as2 ~ -> | % 6
    as4 s4*7 | % 8
    \clef "bass" \time 5/4 s8. \clef "treble" s16*17 | % 9
    \time 3/4  s2. | \barNumberCheck #10
    \numericTimeSignature\time 2/2  \change Staff="2" cs,,16 ( b'16
    \change Staff="1" gs'16 e16 ds16 fs16 \change Staff="2" ds'16 cs16 )
    \change Staff="1" e16 ( ds'16 b16 \change Staff="2" cs,16 \change
    Staff="1" gs'16 \change Staff="2" fs,16 \change Staff="1" as16 b16 )
    ~ | % 11
    b8 s8*7 s2 r8 df,8 ( ef8 \change Staff="2" af,8 ) \bar "||"
    \key df \major s2. \clef "bass" s4 | % 14
    \clef "treble" \change Staff="1" s1 | % 15
    df'8 ( b8 ef8 df8 ) <a c>4 f16 df16 af'16 ef16 s1 \bar "||"
    \key c \minor s2 r4 <ef' f d'>4 | % 18
    \time 5/4  s4*5 \bar "||"
    \clef "bass" \time 6/4 \key ef \minor s1 f,,2 | \barNumberCheck #20
    \numericTimeSignature\time 4/4  s2. \clef "treble" s4 | % 21
    r8 <af bf>8 \times 2/3 {
        af4 bf8 }
    r8 <af bf>8 \times 2/3 {
        af4 bf8 }
    | % 22
    r8 <f ef'>8 \times 2/3 {
        <af df>4 <bf ef>8 }
    r8 <f ef'>8 \once \omit TupletBracket
    \times 2/3  {
        bf8 df8 bf8 }
    | % 23
    r8 ef8 \times 2/3 {
        ef4 bff8 }
    \times 2/3  {
        b8 af4 }
    <fs e'>4 ~ ~ | % 24
    \time 3/4  \times 2/3 {
        <fs e'>8 <gs fs'>4 }
    e'4 s4 \bar "||"
    \numericTimeSignature\time 4/4  \key gs \minor r8 <gs, e'>8 r4 r8
    gs'8 r4 | % 26
    \time 2/4  r8 <e b'>8 r4 | % 27
    \numericTimeSignature\time 4/4  r8 <cs fs b>8 r4 r8 <cs' fs b>8
    \times 2/3 {
        gs'4 fs8 }
    | % 28
    r8 <fs, b ds>8 r4 r8 e'8 r4 s1 s1 s1 | % 32
    \time 3/4  r8 <as,, b ds fs>8 ~ ~ ~ ~ <as b ds fs>2 | % 33
    \numericTimeSignature\time 4/4  as''16 gs16 fs16 b,16 cs16 as16 gs16
    fs16 cs16 ds16 <b ds>8 ~ ~ <b ds>4 | % 34
    \time 5/4  s2. \clef "bass" s2 | % 35
    \numericTimeSignature\time 2/2  s1 | % 36
    \clef "treble" s4 as8 gs8 s1. \bar "|."
    }

PartPTwoVoiceFive =  \relative cs' {
    \clef "bass" \numericTimeSignature\time 2/2 \key b \major | % 1
    s2 \sustainOn r8 cs4. ~ | % 2
    cs4 <b cs>4 r4 ds4 -- | % 3
    gs,,8 as'8 \change Staff="1" b'8 fs'8 \change Staff="2" r2 | % 4
    r2 _\< r4 s4 | % 5
    <ds,, es>4 -- <cs fs gs>2. -> _\! | % 6
    gs16 ds'16 as'16 \change Staff="1" cs16 b'16 fs16 \clef "treble"
    \change Staff="2" cs'16 gs'16 ds16 \change Staff="1" as16 b16 fs16
    \clef "bass" \change Staff="2" gs,16 \change Staff="1" cs16 \change
    Staff="2" ds,16 fs,16 | % 7
    e16 _\! _\< ds'16 \change Staff="1" gs16 cs16 fs16 \clef "treble"
    \change Staff="2" b16 <cs ds>16 as16 r4 \clef "bass" r8. <ds,,, as'>16
    ~ -> ~ _\mf _\markup{ \small\italic {sonoro} } | % 8
    \time 5/4  <ds as'>2 r16 gs'16 b16 e,16 ds8 -. _\markup{
        \small\italic {secco} } cs'8 -_ r4 | % 9
    \time 3/4  r8 _\! \sustainOn _\< \once \omit TupletBracket
    \times 4/5  {
        gs,32 ds'32 as'32 \change Staff="1" b32 fs'32 }
    \change Staff="2" r2 | \barNumberCheck #10
    \numericTimeSignature\time 2/2  s4. _\markup{ \small\italic {piu
            calmando} } \clef "treble" r8 b8 r8 r8 cs,16 ds16 | % 11
    \clef "bass" s4 _\< \clef "treble" fs'16 ds16 fs,8 b,8 fs8 \clef
    "bass" e16 gs16 fs'8 ~ | % 12
    <fs as>16 -. _\! -\! -\> ds16 cs16 <b ds>16 r4 gss,4 -> <f' c'>4 _\f
    \bar "||"
    \key df \major s4 r8 \clef "treble" g'8 ef8 bf8 r8 \clef "bass" df,16
    g,16 | % 14
    <ef bf'>4 -- <df'' ef>4 <f, bf ef>4 <ef df'>4 | % 15
    <gf df'>4 <f df'>4 <f ef'>4 <cf a'>4 s4 r8 df16 af'16 c16 bf16 g16 a16
    <ef g bf>8 d8 \bar "||"
    \key c \minor <c g' bf>1 ~ ~ ~ \clef "treble" | % 18
    \clef "bass" \time 5/4 <c g' bf>8 <af f' c'>8 ~ ~ ~ <af f' c'>4 r8
    \once \omit TupletBracket
    \times 4/5  {
        c,32 g'32 ef'32 \change Staff="1" bf'32 f'32 }
    \change Staff="2" r2 \bar "||"
    \time 6/4  \key ef \minor r8 _\markup{ \small\italic {ben sonore} }
    df,4 ef4 af,8 ~ af4 ~ <df, af'>2 \change Staff="1" _\markup{
        \small\italic {molto espressivo} } | \barNumberCheck #20
    \numericTimeSignature\time 4/4  \change Staff="2" ef2 \ottava #0
    \ottava #-1 ef,2 | % 21
    df''8 ef,8 gf'8 f8 df8 ef,8 gf'8 f8 | % 22
    bf,8 ef,8 gf'8 f8 ef8 bf8 gf8 f8 | % 23
    ff8 df'8 cf8 _\< gf'8 ff8 df8 r8 <d, a'>8 ~ ~ _\! _\f | % 24
    \time 3/4  <a' d>4 <fs cs'>2 \bar "||"
    \numericTimeSignature\time 4/4  \key gs \minor e'8 fs,8 cs''8 gs8 e8
    fs,8 cs''8 gs8 | % 26
    \time 2/4  e8 fs,8 cs''8 fs,8 | % 27
    \numericTimeSignature\time 4/4  e16 cs,16 ds'8 cs8 a8 b8 cs,8 e'8 ds8
    | % 28
    b8 cs,8 e'8 ds8 gs,8 cs,8 e'8 ds8 s2 r8 <e b'>8 s4 s1 | % 31
    r8 as8 ~ as4 ~ as4 <e as cs>4 | % 32
    \time 3/4  r16. <gs,, gs'>32 ~ ~ <gs gs'>8 ~ ~ <gs gs'>2 \clef
    "treble" | % 33
    \numericTimeSignature\time 4/4  fs'''8 \clef "bass" cs8 b8 as8 fs8
    <cs gs'>8 ~ ~ <cs gs'>4 | % 34
    \time 5/4  gs16 as'16 \change Staff="1" cs16 ds16 b'16 fs16 \clef
    "treble" \change Staff="2" cs'16 gs'16 ds16 \change Staff="1" as16 b16
    fs16 \clef "bass" \change Staff="2" gs,16 \change Staff="1" cs16 b16
    as16 fs8 gs8 | % 35
    \numericTimeSignature\time 2/2  \change Staff="2" cs,,2. r4 | % 36
    r8 ds'8 ~ ds2. ~ | % 37
    <gs, ds'>2 r2 \bar "|."
    }

PartPTwoVoiceSix =  \relative cs' {
    \clef "bass" \numericTimeSignature\time 2/2 \key b \major | % 1
    r8 cs8 ds8 gs,8 fs2 \change Staff="1" \change Staff="2" _\markup{
        \small\italic {esspressivo} } | % 2
    e4 ds4 <cs gs'>2 s1*2 s8*11 \clef "treble" s4. \clef "bass" s16*9
    \clef "treble" s16*7 \clef "bass" s4 | % 8
    \time 5/4  s4*5 | % 9
    \time 3/4  s2. | \barNumberCheck #10
    \numericTimeSignature\time 2/2  s4. \clef "treble" s8*5 | % 11
    \clef "bass" s4 \clef "treble" s2 \clef "bass" s4 s1 \bar "||"
    \key df \major s4. \clef "treble" s2 \clef "bass" s8 s1*2 s1 \bar
    "||"
    \key c \minor s2. \clef "treble" f,2 f'2 | % 18
    \clef "bass" \time 5/4 r4 r8 bf,,8 \bar "||"
    \time 6/4  \key ef \minor s1. | \barNumberCheck #20
    \numericTimeSignature\time 4/4  s1 s1*2 s1 | % 24
    \time 3/4  d8 e8 s4 b''8 fs8 \bar "||"
    \numericTimeSignature\time 4/4  \key gs \minor s1 | % 26
    \time 2/4  s2 | % 27
    \numericTimeSignature\time 4/4  s1 s1 | % 29
    \once \omit TupletBracket
    \times 2/3  {
        cs8 gs'8 fs8 }
    \times 2/3  {
        e8 ds4 }
    gs,4 <a gs'>4 ~ ~ | \barNumberCheck #30
    <a gs'>8 <b gs'>4 <cs b'>8 ~ ~ <cs b'>4 <ds as' fs'>4 | % 31
    e,2 ~ \times 2/3 {
        e4 <cs gs'>8 ~ ~ }
    <cs gs'>4 | % 32
    \time 3/4  s2 \clef "treble" as'''8 ds8 | % 33
    \numericTimeSignature\time 4/4  s8 \clef "bass" s8*7 | % 34
    \time 5/4  s4. \clef "treble" s4. \clef "bass" r8 e,,8 ds16 cs16 b16
    gs16 | % 35
    \numericTimeSignature\time 2/2  s1 | % 36
    gs1 ~ | % 37
    gs,2 s2 \bar "|."
    }

PartPTwoVoiceSeven =  \relative g' {
    \clef "bass" \numericTimeSignature\time 2/2 \key b \major s1*4 s8*11
    \clef "treble" s4. \clef "bass" s16*9 \clef "treble" s16*7 \clef
    "bass" s4 | % 8
    \time 5/4  s4*5 | % 9
    \time 3/4  s2. | \barNumberCheck #10
    \numericTimeSignature\time 2/2  s4. \clef "treble" s8*5 | % 11
    \clef "bass" s4 \clef "treble" s2 \clef "bass" s4 s1 \bar "||"
    \key df \major s4. \clef "treble" s2 \clef "bass" s8 s1*2 s1 \bar
    "||"
    \key c \minor s2. \clef "treble" g4 | % 18
    \clef "bass" \time 5/4 s4*5 \bar "||"
    \time 6/4  \key ef \minor s1. | \barNumberCheck #20
    \numericTimeSignature\time 4/4  s1 s1*2 s1 | % 24
    \time 3/4  s2. \bar "||"
    \numericTimeSignature\time 4/4  \key gs \minor s1 | % 26
    \time 2/4  s2 | % 27
    \numericTimeSignature\time 4/4  s1 s1*2 s1 s1 | % 32
    \time 3/4  s2 \clef "treble" s4 | % 33
    \numericTimeSignature\time 4/4  s8 \clef "bass" s8*7 | % 34
    \time 5/4  s4. \clef "treble" s4. \clef "bass" s2 | % 35
    \numericTimeSignature\time 2/2  s1*3 \bar "|."
    }

PartPTwoVoiceThree =  \relative as''' {
    \clef "treble" \numericTimeSignature\time 2/2 \key b \major s1*4
    s1*3 | % 8
    \clef "bass" \time 5/4 s8. \clef "treble" s16*17 | % 9
    \time 3/4  s2. | \barNumberCheck #10
    \numericTimeSignature\time 2/2  s1*2 s1 \bar "||"
    \key df \major s2. \clef "bass" s4 | % 14
    \clef "treble" s1*2 s1 \bar "||"
    \key c \minor s1 | % 18
    \time 5/4  s4*5 \bar "||"
    \clef "bass" \time 6/4 \key ef \minor s1. | \barNumberCheck #20
    \numericTimeSignature\time 4/4  s2. \clef "treble" s4 s1*2 s1 | % 24
    \time 3/4  s2. \bar "||"
    \numericTimeSignature\time 4/4  \key gs \minor s1 | % 26
    \time 2/4  s2 | % 27
    \numericTimeSignature\time 4/4  s1 s1*2 s1 s1 | % 32
    \time 3/4  s4. r16 \ottava #1 as16 _\mp gs16 fs16 b,16 \ottava #0 cs16
    | % 33
    \numericTimeSignature\time 4/4  s1 | % 34
    \time 5/4  s2. \clef "bass" s2 | % 35
    \numericTimeSignature\time 2/2  s1 | % 36
    \clef "treble" s1*2 \bar "|."
    }

% \layout {
%   \context {
%     \Score \consists #(set-bars-per-line '(4))
%   }
% }

\score {
  <<
    \new Staff
    <<
      \set Staff.instrumentName = "Soprano"
      % \set Staff.shortInstrumentName = "S."
      \context Staff <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "soprano" {  \soprano }
        \new Lyrics \lyricsto "soprano" { \set stanza = "1." \words  }
      >>
    >>
    \new PianoStaff
    <<
      \set PianoStaff.instrumentName = "Piano"
      % \set PianoStaff.shortInstrumentName = "Pno."
      \context Staff = "1" <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPTwoVoiceOne" {  \voiceOne \PartPTwoVoiceOne }
        \context Voice = "PartPTwoVoiceTwo" {  \voiceTwo \PartPTwoVoiceTwo }
        \context Voice = "PartPTwoVoiceThree" {  \voiceThree \PartPTwoVoiceThree }
      >> \context Staff = "2" <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPTwoVoiceFive" {  \voiceOne \PartPTwoVoiceFive }
        \context Voice = "PartPTwoVoiceSix" {  \voiceTwo \PartPTwoVoiceSix }
        \context Voice = "PartPTwoVoiceSeven" {  \voiceThree \PartPTwoVoiceSeven }
      >>
    >>
  >>
}
