\version "2.25.3"

\include "settings.ily"

\header {
  title = "Ralph Dreams of Lennie"
  dedication = "To Ralph Rosen on the occasion of his 60th birthday"
  composer = "Ben Rosen"
}

global = {
  \numericTimeSignature
  \time 2/4
  \tempo 4=60
}

right = \relative c'' {
  \global
  r4 \tuplet 6/4 {a,16( cs e af c ef)} |
  r4 \tuplet 6/4 {a,,16( cs e af c ef)} |
  d,16 b' fs cs' as' \tuplet 2/3 {a, c'} |
  \tuplet 4/3 {\tuplet 2/3 {gs,,8 b'} r} r |
  <<
    {g'4. <gf bf>8}
    \\
    {\tuplet 3/2 {r16 c,, c} \tuplet 3/2 {c16 c c} \tuplet 3/2 {r16 c c} \tuplet 3/2 {r16 c c}}
  >> |
  r4 \tuplet 6/4 {a16( cs e af c ef)} |
  \time 2/8
  d,16 b' fs cs' |
  \time 2/4
  as' r r8 r4 |
  f8 r r4 |
  \time 11/24
  c8.*16/24 r a16*16/24[( cs e af c]) |
  \time 2/4
  ef16 r r8 r4 |
  \tuplet 5/4 {f,16( d, e'' <cs bf,> a)} \tuplet 5/4 {<e' d,,>( bf, a' f cs')} |
  \tuplet 6/4 {d16( a fs df af f)} r4 |
  \tuplet 5/4 {a'4 cs e,8} |
  \tuplet 6/4 {af16( ef c g d bs)} r4 |
  \tuplet 5/4 {r4 ef'8 g, bf,} |
  \time 3/8
  <<
    {fs''4 <g b>8}
    \\
    {\tuplet 3/2 {r16 b,, b} \tuplet 3/2 {b16 b b} \tuplet 3/2 {r16 c c}}
  >> |
  \bar "||"
  \time 4/4
  r2 r4 \tuplet 3/2 {f8 bf c} |
  d b c af g bf d f |
  fs ds r4  r8 as b cs |
  ds cs ds e \tuplet 3/2 {fs a, cs} e fs-> |
  r4 \tuplet 3/2 {e8 bs as} \tuplet 3/2 {b a as} \tuplet 3/2 {e fs r} |
  r gs16 as b ds e g gs b as e \tuplet 3/2 {ds'8 c cs} |
  \tuplet 3/2 {d cs d} fs,16 g b cs d af fs g fs e d c |
  b8 e fs gs b ds cs b |
  as r cs, fs gs as \tuplet 3/2 {cs d c} |
  cs16 gs a ds e8 b r2 |
  fs8 ds b bf' f d cs' a |
  af ef c b' g d \tuplet 3/2 {cs' as fs} |
  f bf, r4 r2  |
  r4 \tuplet 5/4 {f,8 bf e g c} \tuplet 5/4 {e,[ a ds fs b]}
  r4  \tuplet 5/4 {a8 cs, e gs b} |
  \tuplet 5/4 {d, g cs e a} \tuplet 5/4 {g d b as fs} |
  r4 \tuplet 5/4 {af8 g ef c bf} \tuplet 5/4 {b[ g c d e]}
  r4  \tuplet 6/4 {c'8 b a g fs e} |
  ds r r <c e g> r4 r8 <fs b ds> |
  \tuplet 3/2 {r af af} \tuplet 3/2 {af af af} \tuplet 3/2 {c d g} \tuplet 3/2 {ef ef r} |
  \tuplet 3/2 {r bf bf} \tuplet 3/2 {r bf r} \tuplet 3/2 {r bf bf} \tuplet 3/2 {r bf ds} |
  \tuplet 3/2 {r a, cs} \tuplet 3/2 {ds e g} \tuplet 3/2 {af c ef} \tuplet 3/2 {g b r} |
  \tuplet 3/2 {g, es fs} \tuplet 3/2 {b a as} \tuplet 3/2 {d c cs} \tuplet 3/2 {ds f e} |
  ds16 b fs e ef' bf g a fs d df' af f8 fs |
  g b, \tuplet 3/2 {d fs as} cs b r4 |
  \bar "||"
  \time 3/4
  \tempo 4=84
  r4 <d,, f bf>
  <<
    {<b' d g>}
    \\
    {<e, a cs>}
  >> |
  \time 2/4
  r4
  <<
    {<a' f'>}
    \\
    {<ef, c'>}
  >>
  |
  \time 3/4
  r4
  <<
    {<as cs fs> <bf ef g>}
    \\
    {<b, g'> <c f a>}
  >>
  |
  \time 2/4
  r4
  <<
    {<g' c e b'>}
    \\
    {<gs, fs'>}
  >>
  |
  \bar "||"
  \tempo 4=60
  r4 \tuplet 6/4 {e'16( cs' a' af, ef' c')} |
  r4 \tuplet 6/4 {e,,16( cs' a' af, ef' c')} |
  <<
    {s8 \tuplet 4/3 {r \tuplet 2/3 {r e}}}
    \\
    {r8 cs,16 fs, as,8 r}
  >> |
  \tuplet 4/3 {\tuplet 2/3 {gs''' b,} r} r |
  \tuplet 5/4 {f4 af, df,8} |
  \tuplet 5/4 {r4 b''8 ds, fs,} |
  \tuplet 6/4 {b,16( ds fs bf d f)} r4 |
  \tuplet 5/4 {a,16( fs, af'' <f d,> df)} \tuplet 5/4 {<fs e,,>( c, b' g ds')} |
  s2 |
  R2 |
  s2*4 |
  \bar "|."



}

left = \relative c, {
  \global
                                % Music follows here.
  \tuplet 6/4 {b16( ds fs bf d f)} r4 |
  \tuplet 6/4 {b,,16( ds fs bf d f)} r8 r16 g |
  <<
    {r8 \tuplet 2/3 {r16 f} r8.}
    \\
    {r8 \tuplet 4/3 {r8 \tuplet 2/3 {r8 e,}}}
  >> |
  r4. r8 |
  ef4. d8 |
  \tuplet 6/4 {b16( ds fs bf d f)} r8 r16 g |
  \time 2/8
  R4|
  \time 2/4 |
  \tuplet 5/4 {d,8 a' fs' \change Staff = "right" df' af'} \change Staff = "left" |
  d,,, a' fs' \change Staff = "right" af' \change Staff = "left" |
  \time 11/24
  b,,16*16/24[( ds fs bf d f]) r8.*16/24 r8*16/24 |
  \time 2/4
  \tuplet 5/4 {d,,8 a' fs' \change Staff = "right" df' af' \change Staff ="left"} |
  c,,,2 |
  r4 \tuplet 6/4 {c''16( g e b fs ds)} |
  \tuplet 5/4 {<bf>8 f'4 d'} |
  r4 \tuplet 6/4 {fs16( cs as f c a)} |
  \tuplet 5/4 {<b''>8 e,,4 gs} |
  \time 3/8
  d4 df8 |
  \bar "||"
  \time 4/4
  b''4 fs ds b |
  \tuplet 5/4 {cs a ds e gs} |
  \tuplet 3/2 {b c g} \tuplet 3/2 {e c g} |
  \tuplet 5/4 {f a bf e d} |
  g, cs b fs' |
  \tuplet 3/2 {f!2 a, c} |
  \tuplet 5/4 {af4 c d ef g} |
  \tuplet 3/2 {f8 e c} a4 f fs |
  \tuplet 3/2 {g2 b a} |
  bf e |
  \tuplet 3/2 {c'2 e, g,} |
  a4 gs e cs |
  \tuplet 5/4 {b ds es fs as} |
  \tuplet 7/4 {e gs as b ds fs e} |
  \tuplet 7/4 {ef g, a bf d f d} |
  \tuplet 7/4 {df f g, af c ef df} |
  \tuplet 7/4 {d fs, gs a cs, e es} |
  \tuplet 7/4 {fs as bs cs es gs as} |
  b2 <ds, fs g c> |
  \tuplet 3/2 {a, <a' e' cs'> <c ef af>} |
  g'4 fs e c, |
  \tuplet 5/4 {d fs a cs e} |
  \tuplet 3/2 {fs g d} \tuplet 3/2 {b g d} |
  \tuplet 5/4 {gs' e c a f} |
  ef <ef' af c> af, <d g b> |
  \bar "||"
  \time 3/4
  \tempo 4=84
  <<
    {r4 <fs ds'> s}
    \\
    {b,,2.}
  >>
  |
  \time 2/4
  af2 |
  \time 3/4
  g'2. |
  \time 2/4
  e2 |
  \bar "||"
  \tempo 4=60
  \tuplet 6/4 {b16( fs' ds' d, bf' f')} r4 |
  \tuplet 6/4 {b,,16( fs' ds' d, bf' f')} r8 r16 \clef treble g'' |
  b, d, \tuplet 2/3 {r \clef bass a} \tuplet 2/3 {c, f,} |
  R2 |
  \tuplet 5/4 {d8 a'4 fs'} |
  \tuplet 5/4 {g8 c,,4 e'} |
  R2 |
  R2 |
  \tuplet 6/4 {b16( fs' ds' \change Staff = "right" d! bf' f')} \change Staff = "left" r4 |
  R2 |
  d,,,16 fs a ef' g bf \change Staff = "right" e gs |
  b f' a c r4 |
  \change Staff = "left"
  \tuplet 5/4 {a,,,8 b e f g} |
  <a c>2 |
  \bar "|."
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
    } {
      \right
    }
    \new Staff = "left" \with {
    } {
      \clef "bass"
      \left
    }
  >>
}
