\version "2.25.15"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"

\header {
  title = "Proem"
  composer = "Ben Rosen"
}

global = {
  \numericTimeSignature
  \time 3/4
  \tempo 4=120
}

electricBass = \relative c, {
  \global
  <<
    \new Voice {\voiceOne r4 s2 | e'4 f g | g f2~ | f2 f4 | f e d~ | d2. }
    \new Voice {\voiceTwo s4 c2~ | c2. | a | ef | gf4 f c'~ | c2. }
    \new Voice {\voiceThree s2. | s | s | s | s | r2 ds,4~ | ds2.}
    \new Voice {\voiceFour r2 e,4~ | e2. | s | s | s | e~ | e}
  >>
  \oneVoice
  \time 4/4
  <bf'' c'>4 <gf af'> <gf af'> <df ef'> | % m8
  \time 3/4
  <bf ef'>2 r4 | % m9

  <<
    \new Voice {\voiceOne e4 f g | g f2~ | f2 c'4 | c b a | bf2.~ | bf}
    \new Voice {\voiceTwo s2. | a, | ef' | a,4 e g'~ | g2 d4~ | d2.}
  >>
  \oneVoice
  \time 4/4
  <g g'>4 <a a'> <f f'> <g g'> | % m16
  \time 3/4
  <d' d,> <d a,> <d e,,> | % m17
  \time 5/4
  <d g,>2.~ <d g,>2 | % m18
  \time 3/4
  <<
    \new Voice {\voiceOne b'4 c d | \time 3/2 d ef e,! f g af |}
    \new Voice {\voiceTwo g2. | \time 3/2 <ef bf'>2 <f, c'>2  <af ef'>2 |}
  >>
  \oneVoice
  \clef bass
  <e'' a ds>4 <c g' b> <c g' b> <af df g> <d, c' g'> <a gs' ds'>~ |
  <a gs' ds'>2 <e gs' ds'>1 |
  \time 3/4
  \tempo 4=100
  \tuplet 3/2 {e8 f g} \tuplet 3/2 {gs a b} \tuplet 3/2 {<e, c'> cs' ds} |
  \tuplet 3/2 {<a e'> f' g} gs a <g b> c |
  <<
    \new Voice {
      \voiceOne d ef e f g af |
      c a af f e cs |
      cs as a fs r4 |
      fs8 ds r
    }
    \new Voice {
      \voiceTwo <ef bf'>4 <f c'> <af ef'> |
      bf gf d |
      b! g r |
      e r8
    }
  >>
  \oneVoice
  <e ds'>4.~ |
  \tempo 4=120
  e4 f g |
  g f2~ |
  f c'4 |
  c b
  <<
    \new Voice {\voiceOne a | r bf2}
    \new Voice {\voiceTwo a4~ | a2.}
  >>
  <e bf'> |
  <e bf' d g> |
  \tuplet 3/2 {e''8 f g} \tuplet 3/2 {b, c d} \tuplet 3/2 {fs, g a~} |
  a4 \tuplet 3/2 {cs,8 d e} \tuplet 3/2 {gs, a b~} |
  b2 r4 |
  <<
    \new Voice {\voiceOne e f g | g f2~ | f f4 | f e d | ef2. }
    \new Voice {\voiceTwo c2. | a | e | e4 a e | f2. |}
  >>
  \oneVoice
  a'4 g' ef |
  \acciaccatura ef8 f2.
  a,,4 g'' ef |
  \tuplet 3/2 {f ef8 d c4~} c |
  \tuplet 3/2 {gs'8 as b2~} b4 |
  a,4 g' ef |
  \acciaccatura ef8 f2.
  a,,4 g'' ef |
  \tuplet 3/2 {f, ef8 d c4~} c |
  \tuplet 3/2 {gs8 as b2~} b8 a |
  \time 9/8
  a' b a, cs' ds a, f'' g a,, |
  a' b a, cs' ds a, f'' g e,, |
  \time 6/8
  a'' b e,,, cs''' ds4 |
  \time 3/4
  \repeat volta 2 {
    b,,8 cs e, ds' f e |
    fs a, gs' as d,! e, |
    b' cs d ds f e |
    fs g gs as d,! e |
  }
  \time 12/8
  a b a, cs' ds a, f'' g a,, a' b a, |
  \time 3/4
  e' fs a, gs' as a |
  b d, cs' ds g,! a, |
  e' fs g gs as a |
  b c cs ds g,! a |
  e fs a, gs' as a |
  b d, cs' ds g,! a, |
  \time 9/8
  a' b a, cs' ds a, f'' g a,, |
  a' b a, cs' ds a, f'' g e,, |
  \time 6/8
  a'' b e,,, cs''' ds a,, |
  \time 9/8
  a' b a, cs' ds a, f'' g a,, |
  a' b a, cs' ds a, f'' g e,, |
  \time 6/8
  a'' b e,,, cs''' ds e,,, |
  \time 3/4
  ds''' e,,, ds''' e,,, ds''' e,,, |
  ds''' e,,, ds''' e,,, ds''' r |
  \tempo 4=100
  r4 g,,2~ |
  g2. |
  <g d>~ |
  <g d> |
  <g d a>~ |
  < g d a> |
  \time 5/4
  \tuplet 3/2 {c'8 d c~} c4 \tuplet 3/2 {c8 d c} \tuplet 3/2 {gs a gs~} gs4 |
  \tuplet 3/2 {c8 d c} \tuplet 3/2 {gs a gs} \tuplet 3/2 {ef f-> gf} f2 |
  <<
    \new Voice {\voiceOne \tuplet 3/2 {c'8 d c~} c4 \tuplet 3/2 {c8 d c} \tuplet 3/2 {gs a gs~} gs4 |
                \tuplet 3/2 {c8 d c} \tuplet 3/2 {gs a gs} \tuplet 3/2 {ef f-> gf} f2 |}
    \new Voice {\voiceTwo <df af'> <df af'>4 <a e'>2 | <df af'>4 <a e'> \tuplet 3/2 {r8 <fs cs'> <g d'>} <fs cs'>2}
  >>
  \tempo 4=140
  <e b' fs'> <ef bf' f'>2. |
  <e b' fs'>2 <ef bf' f'> <a, e' b'>8 e |
  \time 3/4
  <ef' bf' ef gf>2. |
  \time 5/4
  <e b' fs'>2 <ef bf' f'>2. |
  <e, b' fs'>2 <ef' bf' f'> <a, e' b'>8 e |
  \time 3/4
  <ef' bf' ef gf>2. |
  \time 5/4
  <g d' bf'>2 <gf df' gf bf>2.
  <e b' fs'>2 <f c' g'> <a, e' b'>8 e |
  \time 3/4
  <df' af' df ff>2. |
  \time 5/4
  <e b' fs'>2 <ef bf' f'>2. |
  <e, b' fs'>2 <ef' bf' f'> <a, e' b'>8 e |
  \time 3/4
  <ef' bf' ef gf>2. |
  <df af' df ff> |
  <ef bf' ef gf> |
  \time 2/4
  <f c' f af>2 |
  \time 5/4
  <e, b'' fs' cs'>2. <f' c' f af>2 |
  <e, b'' fs' cs'>2. <e bf'' gf'>2 |
  <e b'' fs' cs'> <e bf'' f'> <a e' b'>8 e |
  \time 3/4
  <ef' bf' ef gf>2. |
  \time 2/2
  e,!2~ <e ef'> |
  e!2~ <e ef'> |
  gf2~ <gf g'> |
  e!2~ <e ef'> |
  \time 5/4
  <e' b' fs'> <ef bf' f'>2. |
  <e b' fs'>2 <ef bf' f'> <a, e' b'>8 e |
  \time 3/4
  <ef' bf' ef gf>2. |
  \time 5/4
  <g d' bf'>2 <gf df' gf bf>2.
  <e b' fs'>2 <f c' g'> <a, e' b'>8 e |
  \time 3/4
  <df' af' df ff>2. |
  \time 5/4
  <e b' fs'>2 <ef bf' f'>2. |
  <e, b' fs'>2 <ef' bf' f'> <a, e' b'>8 e |
  \time 3/4
  <ef' bf' ef gf>2. |
  <df af' df ff> |
  <ef bf' ef gf> |
  <df af' df ff> |
  \time 2/4
  <f c' f af>2 |
  \time 5/4
  <e, b'' fs' cs'>2. <f' c' f af>2 |
  <e, b'' fs' cs'>2. <e bf'' gf'>2 |
  <e b'' fs' cs'> <e bf'' f'> <a e' b'>8 e |
  \time 3/4
  <ef' bf' ef gf>2. |
  \time 3/2
  e,!2~ <e~ ef'~>  <e ef' bf'> |
  \time 2/2
  g'~ <g gf,> |
  \time 3/2
  e,!~ <e~ ef'~>  <e ef' bf'> |
  g'~ <g gf,>1 |
  a,2~ <a~ af'~>  <a af' ef'> |
  \time 2/2
  d~ <d cs> |
  \time 3/2
  e,!~ <e~ ef'~>  <e ef' bf'> |
  g'~ <g gf,>1 |
  a,2~ <a~ af'~>  <a af' ef'> |
  \time 2/2
  d~ <d cs> |
  \time 3/2
  e,!~ <e~ ef'~>  <e ef' bf'> |
  g'~ <g gf,>1 |
  d2~ <d cs>1 |
  g2~ <g gf,>1 |
  \time 2/2
  d2~ <d~ cs~> |
  <d cs>1
  \time 4/4
  <ef bf'>4. <ef~ bf'~>8 <ef bf'>4. e,!8 |
  <ef' bf'>4. <ef~ bf'~>8 <ef bf'>2 |
  <ef bf'>4. <ef~ bf'~>8 <ef bf'>4. g8~ |
  g1 |
  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass Guitar"
  } {
    \clef "bass_8" \electricBass
  }
}
