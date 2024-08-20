\version "2.25.17"

\include "helpers/settings.ily"

\header {
  title = "Chanson"
  poet = "Oscar Wilde"
  composer = "Ben Rosen"
}

key_time_and_tempo = {
  \tempo 4 = 60
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

  R1 * 5 |

  r8 cs \( -\mp ds gs, fs ( ds ) e fs |
  b4 -\markup \italic "poco cresc." cs ds ( fs ) \) |

  \time 5/4

  r4 r8 cs \( -\mf as -\markup \italic "poco decresc." fs b4 as |

  \time 3/4

  gs2 \) r4 |

  \time 2/2

  r8 e'16 \( -\mp ds cs8 b gs ds e fs ~ |
  fs gs \) r b \( -\markup \italic "sub." -\mf fs'4. -> cs8 |
  cs e ds4. \) r8 ef4 \( -\markup \italic "cresc."

  \key df \major

  f8 ( bf, ef ) df c16 ( bf ) a8 gf'8. f16 |
  d4 \) r af16 ( -\mp bf ) gf ef f8 -\< df16 ef -\! |
  ff8. ( _\> ef16 ) df8 df r4 _\! r8 af' \( _\mf |
  ef' gf f bf, ef -\markup \italic "cresc." df16 ( c ) a4 \) |

  \key c \minor

  r ef \( -\mp bf'8 a4 g16 f |

  \time 5/4

  g8 -\> ef d4 c \) -\! -\p r2

  \tempo 4 = 70
  \key ef \minor
  \time 6/4

  R1. |

  \time 4/4

  R1 * 2 |

  af'8 ( -\mf -\< bf16 gf \tuplet 3/2 { f8 ) ef' df }
    gf,16 ( bf c df f8. ) -\! -\f ef16 |
  ef8 gf \tuplet 3/2 { cf, ( _\> bf af ~ } af4 ) -\! -\mp r |

  \time 3/4

  R2. |

  \time 4/4
  \key gs \minor

  \tuplet 5/4 { gs16 ( -\mf a gs fs ) e } b'8. ( ds,16 ) ds8 cs e8. fs16 ~ |

  \time 2/4

  fs8 gs ~ gs r |

  \time 4/4

  r8. gs16 a8 ( b16 ) gs fs ( b e ds  cs ) gs b e |
  fs8 ( gs ) r4 \tuplet 6/4 { b,16 ( -\mp cs b ) as ( gs ) fs }
    \tuplet 3/2  { gs8 ( cs, ) e } |
  fs8. ( gs16 ) as8 ds r fs -\markup \italic "sub." -\mf e -\< ds -\! |
  gs -\f ( cs, b ) as b cs gs4 |
  r8 fs _\< \tuplet 3/2 { as b cs }
    e fs as4 ~ -\! -\ff -\markup \italic "con passione" ( |

  \time 3/4

  as4. b,8 ~ b4 ) |

  \time 4/4

  R1 - "rit." |

  \time 5/4

  r8 -\markup \bold "A tempo" cs -\mp ds gs, fs ds ~
    \tuplet 3/2  { ds e _\> fs } cs4 _\! |

  \time 2/2

  r8 ds _\p _\< e fs b4 cs _\! _\mp |
  as2. _\> ( gs4 ~ _\! |
  gs2 _\pp ) r |

  \bar "|."
}

upper_staff =  \relative fs' {
  \key_time_and_tempo

  <fs as b ds>2 -- -\p r4

  << {

    r8 ( -\< gs |
    as4 ds8 es fs4 -\f -\> as ) |

  } \\ {

      ds,,4 ~ |
      ds8 fs gs4 <e b'>2 |

  } >>

  s4 -\mp -\markup \italic "piu tranquillo" s <cs'' ds>4. ( b8 |

  as fs ds gs, )
  \tuplet 6/4  {
    as ( cs ds,
    \change Staff = "lower"
    cs as fs )
  } \change Staff = "upper" |


  << {

    r2 a' ~ |
    a4 s2. |

  } \\ {

    <gs, as>4
    <b e>2. -> -\mf -\> |

  } >>

  s2 fs''16 cs cs gs
  \change Staff = "lower"
  \clef "bass"
  b,
  \change Staff = "upper"
  cs as fs |
  \clef "bass"

  \time 5/4

  es as cs
  \clef "treble"
  gs' ds es as gs fs ds cs8 ~ cs <ds e gs> -. -- r4 |

  r4 s8 r4 <ds' e fs b>8 ~ |
  <cs e fs b> s s4 e16 ds' b
  \change Staff = "lower"
  cs,
  \change Staff = "upper"
  gs'
  \change Staff = "lower"
  fs,
  \change Staff = "upper"
  as b ~ |

  b8 s r16 fs' cs' as r as, ds, cs r8 r16 <b' as'> ~ |
  <b ds gs> <gs cs> <as b> fs' \tuplet 6/4 {
    ds16 as e fss
    \change Staff = "lower"
    cs ds,
  }
  \change Staff = "upper"

  << {

    r4 <gf' a df> |

  } \\ {

    r8 df ef [
    % \change Staff = "lower"
    af, ] |

  } >>

  \key df \major

  \change Staff = "lower"
  bf,16 ( -\markup \italic "sub." -\mp -\< g' c
  \change Staff = "upper"
  f bf ef a f g df g, f
  \clef "bass"
  ef af, bf ef, ) |

  \clef "treble"
  <g c f a>4 -\mf <f' af c> -\markup \italic "sub." -\p -\<
  <af df> <a c af'> -\! -\markup \italic "espressivo" |

  << {

    <a ef'>4 -\mf <af af'> gf'16 f c df <c ef>4

  } \\ {

    df8 b ef df <a c>4 f16 df af ef |

  } >>
  \change Staff = "lower" |

  bf
  \change Staff = "upper"
  c' a ef' df g, f'8 g16 af <f bf>8 <c d f a>4 |

  \key c \minor

  << {

    s2 r4 <ef' f df'> |

  } \\ {

    <ef, f a>1 ~ -\mp |

    \time 5/4

    <ef f a>8

  } >>

  <bf' gf'>4. r4 s2 |

  \key ef \minor
  \time 6/4
  \clef "bass"

  <af, bf ef f>4. -\f <f bf df gf> <gf bf cf ef>4 <bf ef> -\> <af df> |

  \time 4/4
  <gf af df f>2 r4 -\!
  \clef "treble"
  <df' f gf af> \arpeggio |

  \tuplet 3/2 { r8 -\mf <f, df'> <f df'> }
  \tuplet 3/2 { f' ef df }
  \tuplet 3/2 { r _\> <f, df'> <f df'> }
  \tuplet 3/2 { f' gf ef } _\! |
  \tuplet 3/2 { r8 _\mp <af, df>8 <af df>8 }
  \tuplet 3/2  {
    f'8 bf8 af8 }
  \tuplet 3/2  {
    r8 <af, df>8 <af df>8 }

  \tuplet 3/2  {
    df'8 af8 gf8 }|
  \tuplet 3/2  {
    r8 <gf, bf>8 af'8 }

  \tuplet 3/2  {
    f8 gf8 af8 ~ }

  \tuplet 3/2  {
    af8 gf8 ef8 }
  \tuplet 3/2  {
    b8 c16 ~ }
  c8 ~ |
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

  \tuplet 3/2   {
    e8 b'8 cs8 } |
  \time 2/4  \tuplet 3/2  {
    r8 <fs, gs>8 <ds gs>8 }

  \tuplet 3/2   {
    <e fs ds'>8 b'8 a8 } |
  \time 4/4  \tuplet 3/2  {
    r8 <ds, gs>8 cs'8 }

  \tuplet 3/2   {
    <fs, b e>8 gs'8 <cs, fs>8 }
  \tuplet 3/2   {
    r8 <ds gs>8 ds'8 }

  \tuplet 3/2   {
    fs8 b,8 gs8 } |
  \tuplet 3/2   {
    r8 <gs, cs>8 <gs cs>8 }

  \tuplet 3/2   {
    <ds b'>8 gs8 fs8 }
  \tuplet 3/2   {
    r8 <fs as b ds>8 <cs' as'>8 }

  \tuplet 3/2   {
    <ds fs b>8 b8 <as cs fs>8 } |
  <fs b e>8 ( <cs' ds gs>8 <gs cs fs>8 <cs, e fs b>8 ) r8 <ds fs gs
                                                           cs>8 _\f _\< <cs fs b>4 ~ ~ ~ | \barNumberCheck #30
  <cs fs b>8 <fs as ds>4 <e as ds fs>8 ~ ~ ~ ~ <e as ds fs>4 <b' cs
                                                              gs'>4 _\! |
  r8 _\ff <ds, gs b>8 ~ ~ ~ <ds gs b>2 <ds fs b>4 |
  \time 3/4  r4 _\fff <cs' cs'>2 |
  \time 4/4  s8*5 e,8 ~ e8 fs8 ~ |
  \time 5/4  fs8 s8*5 \clef "bass" s2 |
  \time 2/2  <e, as>2. r4 |

  \clef "treble"
  r4 -\p -\> cs'4 ( <b ds>2 ~ -\! |
  <b ds>2 ) -\pp r2


  \bar "|."
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

  e16 ds'
  \change Staff = "upper"
  gs cs fs
  \change Staff = "lower"
  \clef "treble"
  b <cs ds> as
  r4 r8.
  \clef "bass"
  <ds,,, as'>16 ~ |

  <ds as'>2 r16 gs' b e, ds8 -. cs' -. r4 |

  r8 \tuplet 5/4 { gs,32 ds' as'
    \change Staff = "upper"
    b fs' } cs'8 -.
    \change Staff = "lower"
    r r4 |

  cs,,16 b'
  \change Staff = "upper"
  gs' e ds fs
  \change Staff = "lower"
  \clef "treble"
  ds' cs b8 r4 cs,16 ds |

  \clef "bass"
  gs,16 e,
  \change Staff = "upper"
  b''' ds,
  \change Staff = "lower"
  \clef "treble"
  fs' ds fs,8 b, fs
  \clef "bass"
  e16 gs fs'8 ~ |

  <fs as>16 -. ds cs <b ds> r4 gss, <f' c'>

  \key df \major

  s4 r8
  \clef "treble"
  g' ef bf r
  \clef "bass"
  ds,16 g, |

  <ef bf'>4 <df' ef> <f bf ef> <ef df'> |
  <gf df'>4 <f df'> <f ef'> <cf a'> |
  r4 r8 df16 af' c b g a <ef g bf>8 d |

  \key c \minor

  << {

    s2.
    \clef "treble"
    g'4

  } \\ {

    r2 <f,, f'>

  } \\ {

    <c' g' bf>1 ~ |
    \clef "bass"
    <c g' bf>8
  } >>

  << {

    <af f' c'>4.

  } \\ {

    r8 bf,

  } >>

  r \tuplet 5/4 { cs32 gs' e'
    \change Staff = "upper"
    b' fs' } ds'8 -. r r4 |

  \change Staff = "lower"

  \key gf \major

  r8 df,,4 ef af,8 ~ af4 ~ <df, af'>2 |

  \time 4/4

  ef2 ef, |
  df''8 ef, gf' f df ef, gf' f |
  bf, ef, gf' f ef bf gf f |
  ff df' cf gf ff df r

  << {

    a'8 ~ |
    <a d>4 <fs cs'>2

  } \\ {

    d8 ~ |
    d8 e s4 b''8 fs

  } >>

  \key b \major
  \time 4/4

  e8 fs, cs'' gs e fs, cs'' gs |

  \time 2/4

  e8 fs, cs'' gs |

  \time 4/4

  e16 cs, ds'8 cs a b cs, e' ds |
  b8 cs, e' ds gs, cs, e' ds |
  \tuplet 3/2 { cs8 gs' fs e ds4 }

  << {

    r8 <e b'>

  } \\ {

    gs,4

  } >>

  <a gs'>4 ~ |
  <a gs'>8 <b gs'>4 <cs b'>8 ~ <cs b'>4 <ds as' fs'>

  << {

    r8 as'4. ~ as4 <e as cs> |

  } \\ {

    e,2 ~ \tuplet 3/2 { e4 <cs gs'>8 ~ } <cs gs'>4 |

  } >>

  \time 3/4

  << {

    r16. <gs gs'>32 ~ <gs gs'>8 ~ <gs gs'>2

  } \\ {

    s2

    \clef "treble"

    as'''8 ds |

  } >>

  fs,8

  \clef "bass"

  cs b as fs <cs gs'>4. |

  \time 5/4

  s2. r8 e ds16 cs b gs |
  cs2. r4 |

  << {

    r8 ds ~ ds2. \laissezVibrer |

  } \\ {

    gs,1 \laissezVibrer |

  } >>

  << {

    <gs ds'>2

  } \\ {

    gs,2

  } >>

  r |
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
