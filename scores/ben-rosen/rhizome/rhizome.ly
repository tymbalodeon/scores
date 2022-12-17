\version "2.23.82"

\include "settings.ily"
\include "style.ily"

\header {
  title = "Rhizome"
  composer = "Ben Rosen"
}

flute = \relative c' {
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 54

  \override Hairpin.minimum-length = #8

  \tuplet 3/2 { d2~\ppp\< d~\ff\> d\pp } |

  \time 3/4
  R2. |

  \time 3/2
  d2~->\pp\< d:32~\ff\> d\pp |

  \revert Hairpin.minimum-length

  \time 4/4
  R1 |

  \tempo 4 = 52
  <d''\flageolet d,,\harmonic>8~\ppp\>(
  <d\flageolet g,,\harmonic>~
  <d\flageolet d,\harmonic>~
  <d\flageolet g,,\harmonic>~
  \tuplet 3/2 {
    <d\flageolet d,,\harmonic>4~
    <d\flageolet g,,\harmonic>~
    <d\flageolet d,\harmonic>)\pppp
  }  |

  \time 3/4
  R2. |

  \time 5/4
  \override Hairpin.minimum-length = #6
  d,,4~\pp\< d~\f\> d~\p\< d~\f\> d\pp  |

  \time 3/4
  R2. |

  \tempo 4 = 52
  \time 4/4
  \tuplet 3/2 {
    d4\ppp\<(~
    <d'\flageolet d,\harmonic~>
    <a'\flageolet d,,\harmonic~>
  }
  <d\flageolet d,,\harmonic~>8
  <fs\flageolet d,,\harmonic>
  a c\ff)

  \time 3/4
  R2. |
  \acciaccatura ef,16->\sfz R2. |

  \tempo 4 = 56
  \time 5/4
  fs,,4\p~ fs\ppp~ fs\ff~ fs\ppp~ fs\p |

  \time 3/4
  R2. |

  \tempo 4 = 58
  \time 4/4
  \tuplet 3/2 { f'2(--\p bf,4-- } \tuplet 3/2 { f'-- bf,-- f'-- } |
  bf,--\ppp) r \tuplet 3/2 { f'2(-- bf,4)--\pppp } |
  \time 3/4

  R2. |
  \time 4/4

  \tempo 4 = 54
  \tuplet 3/2 { d2\p~ d\mf~ d\p } |

  \time 2/4
  cs,2\pp |

  \time 3/4
  \acciaccatura es''16(->\sfz c,,2)\ppp\glissando( cqf4) |

  \time 4/4
  R1 |

  \tempo 4 = 56
  \time 5/4
  a'2\pp~ a4\f~ a2\pp

  \time 3/4
  R2. |

  \tempo 4 = 54
  \time 3/2
  a2:32\mf~ a\ppp~ a:32\ff

  \time 4/4
  R1 |

  \tempo 4 = 52
  \tuplet 3/2 {
    a4\ppp\<(~
    <a'\flageolet a,\harmonic~>
    <e'\flageolet a,,\harmonic>
  }
  a cs\ff) |

  \time 3/4
  R2. |

  \time 4/4
  \acciaccatura af,16->\sfz R1 |

  \time 3/2
  <fs'\flageolet fs,,\harmonic>8(\ppp\>~
  <fs\flageolet b,,\harmonic>~
  <fs\flageolet fs,\harmonic>~
  <fs\flageolet b,,\harmonic>~
  \tuplet 3/2 {
    <fs\flageolet fs,,\harmonic>2~
    <fs\flageolet b,,\harmonic>~
    <fs\flageolet fs,\harmonic>)\pppp
  } |

  \time 4/4
  R1 |

  \tempo 4 = 60
  \time 5/4
  \appoggiatura d,,8 cs'2\p \appoggiatura fs,8\mf f'2~ f4\p |

  \time 2/4
  R2 |

  \tempo 4 = 63
  \time 3/4
  \tuplet 3/2 { \appoggiatura d8 cs,4\ppp \appoggiatura fs'8 f,!4 r } r

  \tempo 4 =60
  \time 4/4
  \appoggiatura d8 cs'2\p\< \appoggiatura fs,8 f'!2 |

  \tempo 4 = 56
  \time 2/4
  \tuplet 3/2 {
    \acciaccatura a!8( as,8->\f\>)
    \acciaccatura a'!8( as,)
    \acciaccatura a'!8( as,)
  }
  \acciaccatura a''!8( as,16\pp) as as r |

  \time 1/8
  R8 |

  \time 2/4

  \xNotesOn
  \tuplet 3/2 { a,8\ppp r r } \tuplet 3/2 {a r r }
  \xNotesOff |

  R2 |

  \tempo 4 = 69
  \time 4/4
  \tuplet 3/2 {d,2\ppp\<( fs a } |
  d4 f af b\f) |

  \time 3/4
  \acciaccatura d16->( cs,,2.\p) |

  \time 1/4
  \acciaccatura es''16->\sfz R4 |

  \time 3/4
  c,,2\pp\glissando( cqf4) |

  \time 3/4
  R2. |

  \tempo 4 = 56
  \time 2/4
  \tuplet 3/2 {
    \acciaccatura gs''8( a,8->\f\>)
    \acciaccatura gs'8( a,)
    \acciaccatura gs'8( a,)
  }
  \acciaccatura gs''8( a,16->-+\pp) a,-+ a-+ r |

  \time 3/4
  \xNotesOn
  \tuplet 3/2 { r8 r a }
  \xNotesOff r4 r |

  \tempo 4 = 63
  \tuplet 3/2 { fs''8(->\f\> e d } \tuplet 5/4 { b-- gs-- e-- c-- g!--) } |

  \time 2/4
  c,4(\ppp\glissando cqf) |
  R2 |

  \tempo 4 = 104
  \time 4/4
  bf'''16->\ff\>( a af g
  \tuplet 3/2 { fs8\f\> e d }
  \tuplet 5/4 { b-- gs-- e-- c-- g!--) } |

  \time 2/4
  c,4(\ppp\glissando cqf) |

  \time 3/4
  R2. |

  \tempo 4 = 88
  \time 4/4
  \tuplet 3/2 { a'4--\pp( d,-- a'--} \tuplet 3/2 { d,-- a'-- d,--) }

  \time 3/8
  af'''8:32\ff\>( ef:32 af:32) |

  \time 2/4
  \tuplet 3/2 { a,,4--\ppp( d,-- a'--)} |

  \time 3/8
  fs''8:32\ff\>( cs:32 fs:32) |

  \time 5/4
  \tuplet 3/2 { g4--\pp( c,-- g'--} \tuplet 3/2 { c,-- g'--) r } r

  \tempo 4 = 96
  \time 4/4
  \tuplet 3/2 {as,,2\ppp\<( d fs } |
  as4 cs e g\f) |

  \time 2/4
  R2 |

  \time 4/4
  \acciaccatura es16->\sfz R1 |

  \tempo 4 = 60
  \time 3/4
  \tuplet 3/2 { gs8(->\f\> fs e! } \tuplet 5/4 { cs-- as-- fs-- d-- a!--) } |

  \time 2/4
  d,4\ppp r |
  R2 |

  \tempo 4 = 66
  \time 2/8
  \tuplet 3/2 { b''16-.\f gs-. r} \xNotesOn \tuplet 3/2 { ef,\p c r} \xNotesOff

  \time 2/4
  R2 |

  \time 2/8
  \tuplet 3/2 { g'''16-+\ff e-+ r} \tuplet 3/2 { ef,,-.\pp c-. r}

  \time 2/4
  R2 |

  \tempo 4 = 108
  \time 4/4
  df'''16->\ff\>( c b bf
  \tuplet 3/2 { a8 g f }
  \tuplet 5/4 { d!-- b!-- g-- es-- bf--\pp) } |

  \time 2/4
  R2 |

  \tempo 4 = 88
  \time 3/4
  \acciaccatura { b16-+-.\ppp gs-+-. }
  R2. |

  \time 2/4
  \acciaccatura { es''16-.\fff c-. }
  R2 |

  \time 3/4
  \xNotesOn
  \acciaccatura { b'16-.\pppp gs-. }
  \xNotesOff
  r4 \acciaccatura { es,16-.\fff c-. } r2 |

  \tempo 4 = 120
  \override TextSpanner.bound-details.left.text = "molto accel."
  es,8\ppp\<(\startTextSpan f gf es f gf)\stopTextSpan

  \time 6/8
  \tuplet 4/6 {
    es16( f \acciaccatura d''-> gf,, es
  }
  \tuplet 4/6 {
    f gf \acciaccatura d''-> es,, f)
  } |

  \time 3/4
  \acciaccatura d''16->
  \tuplet 3/2 {
    gf,,8( es
    \acciaccatura gf''16-> f,,8
  }
  \tuplet 3/2 {
    gf8 es \acciaccatura gf''16-> f,,8
  }
  \tuplet 3/2 { gf8 es f) } |

  \time 4/4
  \acciaccatura a''16-> es,16( f gf es
  \tuplet 5/4 {
    f \acciaccatura a'-> gf, es f \acciaccatura b'-> gf,
  }
  \tuplet 3/2 { es f gf }
  \tuplet 3/2 { es f \acciaccatura b'-> gf,\f) } r4 |

  \tempo 4 = 80
  \tuplet 3/2 { d,16\pp\<( a' fs }
  \tuplet 3/2 { cs' bf f'! } d32 af' f b! fs c'! a! ds
  \tuplet 5/4 { c e f gf e }
  \tuplet 7/4 { g a bf gs b! cs d\ff) } r4 |

  \tempo 4 = 76
  \time 3/4
  d,,,->\fff~ \tuplet 7/4 { d8\pppp\<( a'-> es'-> af->  c-> es-> f->) } |

  \time 5/8
  \tuplet 4/6 {d,,16--\fff\>( a'-- es'-- af-- } c-- es-- f-- gf--) |

  \time 4/4
  \tuplet 3/2 { d,,4\ppp\<( fs as } d8 f! af b) |
  \tuplet 3/2 { d,8( fs as } \tuplet 5/4 { d16 f! af b d\ff) } r4

  \tempo 4 = 144
  \tuplet 3/2 { d,16->\fff( e fs } \tuplet 3/2 { gs as c) }

  \time 2/4
  R2 |

  \tempo 4 = 54
  \time 3/4
  \acciaccatura d16->\sfz
  \tuplet 3/2 { cs,,,4\pp\glissando cqs\glissando c! } r4 |

  \time 2/4
  \acciaccatura fs''16->\sfz
  R2 |

  \tempo 4 = 72
  \time 3/4
  \tuplet 3/2 {as16\ff\>-> r gs-> r fs-> r}
  \tuplet 5/4 {ds-> r c-> r gs-> r e-> r b-> r} |

  \time 3/4
  e,4\ppp r r |

  \tempo 4 = 63
  \time 2/4
  \tuplet 3/2 {
    \acciaccatura b''8 c,8\ppp->
    \acciaccatura b' c,
    \acciaccatura b' c,
  }
  \acciaccatura b'' c,16 c r8 |

  \tempo 4 = 116
  \time 4/4
  d'32\fff\>-> r df-> r c-> r b-> r
  \tuplet 3/2 {as16-> r gs-> r fs-> r }
  \tuplet 5/4 { ds-> r c-> r gs-> r e-> r b-> r } |

  \time 3/4
  e,4\ppp r r |

  \tempo 4 = 66
  \time 2/8
  \tuplet 3/2 {
    \acciaccatura g'!8 gs,\pppp-> \acciaccatura g'! gs, \acciaccatura g'! gs,
  } |

  \tempo 4 = 76
  \time 3/4
  \tuplet 3/2 {gs''16\f\>-> r fs-> r e-> r}
  \tuplet 5/4 {cs-> r bf-> r fs-> r d-> r a\ppp-> r} |

  \time 2/4
  R2 |

  \tempo 4 = 88
  \time 5/8
  d'8.:64\ff\>( a:64 d8:64 a:64) |

  \time 2/4
  \tuplet 3/2 {ef'4\ppp af, ef'} |

  \time 3/8
  d8:64\ff\>( a'!:64 d,:64) |
  \tuplet 3/2 {cs--\pp\<( fs-- cs--)} fs16-> cs'-> |

  \time 5/16
  g16.:64\ff\>( c:64 g,16:64[ c:64]\mf) |

  \time 2/4
  \tuplet 3/2 {f4:64\fff-> bf,:64-> f:64->} |

  \time 2/8
  bf'8:64->\>[ f:64->] |

  \time 5/16
  e16.:64\ppp\<( b':64 e,16:64[ b':64\fff)] |

  \time 2/4
  R2 |

  \tempo 4=84
  \time 3/4
  \tuplet 3/2 {fs16\f\>->-+ r e-+ r d-+ r}
  \tuplet 5/4 {b-+ r gs-+ r e-+ r c-+ r g-+ r} |

  \time 2/4
  c,4(\ppp\glissando cqf) |
  R2 |

  \tempo 4=104
  \time 4/4
  bf'''32\ff\>-> r a r af r g r
  \tuplet 3/2 {fs16 r e r d r }
  \tuplet 5/4 {\xNotesOn b r gs r e r c r g r \xNotesOff } |

  \time 3/4
  c,4(\ppp\glissando cqf) r |

  \tempo 4=132
  \time 5/4
  \tuplet 3/2 {d'''16->\fff\>( df c}
  \tuplet 3/2 {b bf a)} af32-> r g-> r gf-> r f-> r
  \tuplet 3/2 {e16-> r d-> r c-> r }
  \tuplet 5/4 {a-+ r fs-+ r d-+ r bf-+ r f\pppp-+ r } |

  \time 3/4
  R2. |

  \tempo 4=100
  \time 4/4
  fs4\ppp\<( a c  ef |

  \time 7/8
  \tuplet 3/2 { fs8 gs as }
  \tuplet 3/2 { c d e }
  \tuplet 5/4 { fs16 g gs a as }
  \tuplet 3/2 { b c cs\f) } |

  \time 2/4
  R2 |
  \tuplet 5/4 { bf,,16\pp\<( df ff g bf } \tuplet 5/4 { c d e fs gs\ff) } |
  R2 |

  \tempo 4=132
  \time 3/4
  \override TextSpanner.bound-details.left.text = "molto accel."
  ef,,8\pppp\<(\startTextSpan f gf ef f gf)\stopTextSpan |

  \time 6/8
  \tuplet 4/6 { ef16( f \grace d''-> gf,, ef }
  \tuplet 4/6 { f gf \grace d''-> ef,, f) } |

  \time 3/4
  \grace {ef'' c} g,8( a bf g a bf) |

  \time 6/8
  \tuplet 4/6 {g16( a \grace {ef'' c} bf, g}
  \tuplet 4/6 {a bf \grace {ef' c} g, a)} |

  \time 3/4
  \tuplet 3/2 {\grace {g'' e} b,8( cs \grace {g''16 e} d,8}
  \tuplet 3/2 {b cs \grace {g''16 e} d,8}
  \tuplet 3/2 {b8 cs d)} |

  \time 4/4
  \grace {b''16 gs} ef,( f gf ef
  \tuplet 5/4 {f \grace {b'16 gs} gf, ef f \grace {b'16 gs} ef,}
  \tuplet 6/4 {ef f gf ef \grace {b''16 gs} f, gf\ff)} r4 |

  \tempo 4=80
  \time 2/4
  \tuplet 3/2 {d,16\ppp\<( a' fs }
  \tuplet 3/2 { cs' bf f'! } d32 af' f b! fs c'! a! ds)\ff |

  \tempo 4=88
  \time 3/4
  \tuplet 3/2 {d,,!16\p\<( f! fs}
  \tuplet 3/2 {a! bf df!} d32 ef fs g a bf b cs
  \tuplet 5/4 {d[ a fs' cs f,]}
  \tuplet 7/4 {bf c d e f as d\fff)} |

  \time 2/4
  R2 |

  \tempo 4=76
  \time 3/4
  \acciaccatura as16 d,,,4\sf~(
  \tuplet 7/4 {
    d8\pppp\<_~
    <d'\flageolet d,\harmonic_~>
    <a'\flageolet d,,\harmonic>
    <d\flageolet d,,\harmonic_~>
    <fs\flageolet d,,\harmonic>
    a c\ff)
  } |

  \time 5/8
  a,,\p\<(~ <a'\flageolet a,\harmonic~> <e'\flageolet a,,\harmonic> a cs\f) |

  \time 4/4
  \tuplet 3/2 {
    ef,,,4\ppp\<(~
    <ef'\flageolet ef,\harmonic~>
    <bf'\flageolet ef,,\harmonic~>
  }
  <ef ef,,\harmonic>8 g bf df\ff) |

  \time 2/4
  \tuplet 3/2 {
    c,,,\ppp\<~(
    <c'\flageolet c,\harmonic~>
    <g'\flageolet c,,\harmonic>
  }
  \tuplet 5/4 { c16 e g bf c\ff) } |

  \time 3/4
  ef,,,4\f~(
  \tuplet 7/4 {
    ef8\pppp\<
    <ef'\flageolet ef,\harmonic>
    <bf'\flageolet ef,,\harmonic>
    <ef\flageolet ef,,\harmonic>
    g bf df\ff)
  } |

  \time 7/8
  f,,,\p\<(~
  <f'\flageolet f,\harmonic~>
  <c'\flageolet f,,\harmonic~>
  <f\flageolet f,,\harmonic~>
  <a\flageolet f,,\harmonic>\f) r4 |

  \tempo 4=92
  \time 3/4
  fs,,->\ff~(^\markup { \italic "molto accel." }
  \tuplet 7/4 { fs8\pppp cs'-> g'-> c-> e-> g-> a->) } |

  \time 5/8
  \tuplet 4/6 { bf,,16--\ff\>( f'-- cf'-- ff-- } bf-- df-- ef-- e--) |

  \time 4/4
  \tuplet 3/2 { d,,4\pp\<( fs as } d8 f af b) |

  \time 3/4
  \tuplet 5/4 { bf,,16\mf\<( df ff g bf } \tuplet 5/4 { c d e fs gs\ff) } r4 |

  \tempo 4=160
  \time 2/4
  \tuplet 3/2 { fs,16->\fff( gs as } \tuplet 3/2 { bs d e) } r4 |

  \tempo 4=88
  \time 4/4
  \tuplet 5/4 { d,,8(--->\pppp\< f-- af-- c-- d-- }
\tuplet 3/2 { fs as d } e16 fs gs as) |

\tempo 4=132
c32->\fff\> r b-> r bf-> r a-> r
\tuplet 3/2 { gs16-> r fs-> r e-> r }
\tuplet 5/4 { cs-> r as-> r fs-> r d-> r a->\ppp r } |

\time 2/4
R2 |

\tempo 4=96
\time 4/4
\tuplet 5/4 {
  d,8--->\pppp\<( f-- af-- c-- d--
}
\tuplet 3/2 { fs as d } e16 fs \tuplet 3/2 { gs as c) } |

\tempo 4=138
\time 2/4
d->\ffff\>( df c b) bf32-> r a-> r af-> r g->\f r |

\time 4/4
R1 |

\tempo 4=126
\time 2/4
\tuplet 5/4 {
  bf,,16\p\<( df ff g bf
}
\tuplet 5/4 { c d e fs gs\mf) } |
R2 |

\tempo 4=96
\tuplet 5/4 {
  fs,,32-+\pp\< r a-+ r c-+ r ef-+ r fs-+ r
}
\tuplet 5/4 {
  \xNotesOn
  gs r as r c r d r e\mp r
  \xNotesOff
} |

\time 4/4
R1 |

\tempo 4=50
<d\flageolet d,,\harmonic>8(\ppp\>~
<d\flageolet g,,\harmonic>~
<d\flageolet d,\harmonic>~
<d\flageolet g,,\harmonic>~
\tuplet 3/2 {
  <d\flageolet d,,\harmonic>4~
  <d\flageolet g,,\harmonic>~
  <d\flageolet d,\harmonic>)\pppp
}  |
R1 |

\tempo 4=46
\time 2/4
\tuplet 3/2 { \xNotesOn d,,8\ppppp r r } r4 |
\tuplet 3/2 { \xNotesOn fs8 r r } r4 |
\bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Flute"
  } {
    \flute
  }
}
