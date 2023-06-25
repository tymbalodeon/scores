\version "2.25.6"

\include "helpers/settings.ily"
\include "helpers/calculate-glissando-slope.ily"

\header {
  title = "Rhizome"
  composer = "Ben Rosen"
}

flute = \relative c' {
  \numericTimeSignature
  \time 4/4
  \tempo 4=54

  \tuplet 3/2 { d2~\ppp\< d~\ff\> d\pp } |

  \time 3/4
  R2. |

  \time 3/2
  d2~->\pp\< d:32~\ff\> d\pp |

  \time 4/4
  R1 |

  \break
  \tempo 4=52
  \shape #'((0 . 1) (0 . 0.5) (0 . 0.5) (0 . 1)) Slur

  <d''\flageolet d,,\harmonic>8~\ppp\>(
  <d\flageolet g,,\harmonic>~
  <d\flageolet d,\harmonic>~
  <d\flageolet g,,\harmonic>~
  \tuplet 3/2 {
    <d\flageolet d,,\harmonic>4~
    <d\flageolet g,,\harmonic>~
    <d\flageolet d,\harmonic>\pppp)
  }  |

  \time 3/4
  R2. |

  \time 5/4

  d,,4~\pp\< d~\f\> d~\p\< d~\f\> d\pp  |

  \time 3/4
  R2. |

  \tempo 4=52
  \time 4/4
  \shape #'((0 . 1) (0 . 2) (0 . 0.5) (0 . 0)) Slur
  \tieDown

  \tuplet 3/2 {
    d4~\ppp\<(
    \once \stemDown <d'\flageolet d,\harmonic~>
    <a'\flageolet d,,\harmonic~>
  }
  <d\flageolet d,,\harmonic~>8
  <fs\flageolet d,,\harmonic>
  a c\ff)

  \tieNeutral

  \time 3/4
  R2. |
  \slashedGrace ef,16^>\sfz R2. |

  \tempo 4=56
  \time 5/4

  fs,,4~\p\> fs~\ppp\< fs~\ff\> fs~\ppp\< fs\p |

  \time 3/4
  R2. |

  \tempo 4=58
  \time 4/4
  \tuplet 3/2 { f'2--\p\>( bf,4-- } \tuplet 3/2 { f'-- bf,-- f'-- } |
  bf,--\ppp) r \tuplet 3/2 { f'2--( bf,4--\pppp) } |
  \time 3/4

  R2. |
  \time 4/4

  \tempo 4=54

  \tuplet 3/2 { d2~\p\< d~\mf\> d\p\> } |

  \time 2/4
  cs,2\pp |

  \time 3/4
  \once \override DynamicText.extra-spacing-width = #'(-0.5 . 1)
  \slashedGrace es''16^>\sfz c,,2\ppp \glissando( cqf4) |

  \time 4/4
  R1 |

  \tempo 4=56
  \time 5/4

  a'2~\pp\< a4~\f\> a2\pp

  \time 3/4
  R2. |

  \tempo 4=54
  \time 3/2
  a2:32~\mf\> a~\ppp\< a:32\ff

  \time 4/4
  R1 |

  \tempo 4=52
  \shape #'((0 . 1) (0 . 2) (0 . 0.5) (0 . 0.5)) Slur
  \tieDown

  \tuplet 3/2 {
    a4~\ppp\<(
    <a'\flageolet a,\harmonic~>
    <e'\flageolet a,,\harmonic>
  }
  a cs\ff) |

  \tieNeutral

  \time 3/4
  R2. |

  \time 4/4
  \slashedGrace af,16^>\sfz R1 |

  \time 3/2
  \shape #'((0 . 1) (0 . 0.5) (0 . 0.5) (0 . 1)) Slur

  <fs'\flageolet fs,,\harmonic>8~\ppp\>(
  <fs\flageolet b,,\harmonic>~
  <fs\flageolet fs,\harmonic>~
  <fs\flageolet b,,\harmonic>~
  \tuplet 3/2 {
    <fs\flageolet fs,,\harmonic>2~
    <fs\flageolet b,,\harmonic>~
    <fs\flageolet fs,\harmonic>\pppp)
  } |

  \break

  \time 4/4
  R1 |

  \tempo 4=60
  \time 5/4
  \slashedGrace d,,8 cs'2\p\< \slashedGrace fs,8 f'2~\mf\> f4\p |

  \time 2/4
  R2 |

  \tempo 4=63
  \time 3/4
  \tuplet 3/2 {
    \slashedGrace d8 cs,4\ppp
    \slashedGrace fs'8
    f,!4 r
  }
  r

  \tempo 4=60
  \time 4/4
  \slashedGrace d8 cs'2\p\< \slashedGrace fs,8 f'!2 |

  \tempo 4=56
  \time 2/4
  \once \override TupletBracket.positions = #'(7 . 5.5)
  \tuplet 3/2 {
    \slashedGrace a!8 as,8->\f\>
    \slashedGrace a'!8 as,
    \slashedGrace a'!8 as,
  }
  \once \override NoteHead.extra-spacing-width = #'(-1 . 0.5)
  \slashedGrace a''!8 as,16\pp as as r |

  \time 1/8
  R8 |

  \time 2/4

  \xNotesOn
  \tuplet 3/2 { a,8\ppp r r } \tuplet 3/2 { a r r }
  \xNotesOff |

  R2 |

  \tempo 4=69
  \time 4/4
  \tuplet 3/2 { d,2\ppp\<( fs a } |
  d4 f af b\f) |

  \time 3/4
  \slashedGrace d16^> cs,,2.\p |

  \time 1/4
  \slashedGrace es''16^>\sfz R4 |

  \time 3/4
  c,,2\pp \glissando( cqf4) |

  \time 3/4
  R2. |

  \tempo 4=56
  \time 2/4
  \tuplet 3/2 {
    \slashedGrace gs''8 a,8->\f\>
    \slashedGrace gs'8 a,
    \slashedGrace gs'8 a,
  }
  \once \override NoteHead.extra-spacing-width = #'(-1.5 . 0.5)
  \slashedGrace gs''8 a,16->-+\pp a,-+ a-+ r |

  \time 3/4
  \xNotesOn
  \tuplet 3/2 { r8 r a }
  \xNotesOff r4 r |

  \tempo 4=63
  \tuplet 3/2 { fs''8->\f\>( e d } \tuplet 5/4 { b-- gs-- e-- c-- g!--) } |

  \time 2/4
  c,4\ppp( \glissando
  \once \override NoteHead.extra-spacing-width = #'(-3 . 0.5)
  cqf) |
  R2 |

  \tempo 4=104
  \time 4/4
  bf'''16->\ff\>( a af g
  \tuplet 3/2 { fs8\f\> e d }
  \tuplet 5/4 { b-- gs-- e-- c-- g!--) } |

  \time 2/4
  c,4(\ppp \glissando
  \once \override NoteHead.extra-spacing-width = #'(-3 . 0.5)
  cqf) |

  \time 3/4
  R2. |

  \tempo 4=88
  \time 4/4
  \tuplet 3/2 { a'4--\pp( d,-- a'--} \tuplet 3/2 { d,-- a'-- d,--) }

  \time 3/8
  af'''8:32\ff\>( ef:32 af:32) |

  \time 2/4
  \tuplet 3/2 { a,,4--\ppp( d,-- a'--) } |

  \time 3/8
  fs''8:32\ff\>( cs:32 fs:32) |

  \time 5/4
  \tuplet 3/2 { g4--\pp( c,-- g'-- } \tuplet 3/2 { c,-- g'--) r } r

  \tempo 4=96
  \time 4/4
  \tuplet 3/2 { as,,2\ppp\<( d fs } |
  as4 cs e g\f) |

  \time 2/4
  R2 |

  \time 4/4
  \slashedGrace es16^>\sfz R1 |

  \tempo 4=60
  \time 3/4
  \tuplet 3/2 { gs8->\f\>( fs e! } \tuplet 5/4 { cs-- as-- fs-- d-- a!--) } |

  \time 2/4
  d,4\ppp r |
  R2 |

  \tempo 4=66
  \time 2/8
  \tuplet 3/2 { b''16-.\f gs-. r }
  \xNotesOn
  \tuplet 3/2 { ef,\p c r }
  \xNotesOff

  \time 2/4
  R2 |

  \time 2/8
  \tuplet 3/2 { g'''16-+\ff e-+ r } \tuplet 3/2 { ef,,-.\pp c-. r }

  \time 2/4
  R2 |

  \tempo 4=108
  \time 4/4
  df'''16->\ff\>( c b bf
  \tuplet 3/2 { a8 g f }
  \tuplet 5/4 { d!-- b!-- g-- es-- bf--\pp) } |

  \time 2/4
  R2 |

  \tempo 4=88
  \time 3/4
  \slashedGrace {
    b16-+-.\ppp
    \once \override NoteHead.extra-spacing-width = #'(-0.5 . 7)
    gs-+-.
  }
  R2. |

  \time 2/4
  \slashedGrace { ef''16-.\fff c-. }
  R2 |

  \time 3/4
  \xNotesOn
  \slashedGrace { b'16-.\pppp gs-. }
  \xNotesOff
  r4 \slashedGrace { ef,16-.\fff c-. } r2 |

  \tempo 4=120
  ef,8\ppp\<(^\markup { \italic "molto accel." } f gf ef f gf)

  \time 6/8
  \tupletDown
  \once \override TupletBracket.visible-over-note-heads = ##t
  \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -0.5)) Slur
  \tuplet 4/6 {
    ef16( f
    \slashedGrace d''^>
    gf,, ef
  }
  \once \override TupletBracket.visible-over-note-heads = ##t
  \tuplet 4/6 {
    f gf \slashedGrace d''^> ef,, f)
  } |
  \tupletNeutral

  \time 3/4
  \slashedGrace d''16^>
  \tuplet 3/2 {
    gf,,8( ef
    \slashedGrace gf''16^> f,,8
  }
  \once \override TupletNumber.X-offset = #3.5
  \tuplet 3/2 {
    gf8 ef \slashedGrace gf''16^> f,,8
  }
  \tuplet 3/2 { gf8 ef f) } |

  \time 4/4
  \slurDown
  \slashedGrace a''16^> ef,16( f gf ef
  \tuplet 5/4 {
    f \slashedGrace a'^> gf, ef f \slashedGrace b'^> gf,
  }
  \tuplet 3/2 { ef f gf }
  \tuplet 3/2 { ef f \slashedGrace b'^> gf,\f) } r4 |
  \slurNeutral

  \tempo 4=80
  \tuplet 3/2 { d,16\pp\<( a' fs }
  \tuplet 3/2 { cs' bf f'! } d32 af' f b! fs c'! a! ds
  \tuplet 5/4 { c e f gf e }
  \tuplet 7/4 { g a bf gs b! cs d\ff) } r4 |

  \tempo 4=76
  \time 3/4
  \once \override DynamicText.extra-spacing-width = #'(-0.5 . 2.5)
  d,,,->\fff~( \tuplet 7/4 {
    d8\pppp\<
    \once \override NoteHead.extra-spacing-width = #'(-0.5 . 1.5)
    a'-> ef'-> af->  c-> ef-> f->)
  } |

  \time 5/8
  \tuplet 4/6 {d,,16--\fff\>( a'-- ef'-- af-- } c-- ef-- f-- gf--) |

  \time 4/4
  \tuplet 3/2 { d,,4\ppp\<( fs as } d8 f! af b) |
  \tuplet 3/2 { d,8( fs as } \tuplet 5/4 { d16 f! af b d\ff) } r4

  \tempo 4=144
  \tuplet 3/2 { d,16->\fff( e fs } \tuplet 3/2 { gs as c) }

  \time 2/4
  R2 |

  \tempo 4=54
  \time 3/4
  \once \override DynamicText.extra-spacing-width = #'(-0.5 . 0.5)
  \slashedGrace d16^>\sfz
  \tuplet 3/2 {
    cs,,,4\pp \glissando
    \once \override NoteHead.extra-spacing-width = #'(-4 . 0.5)
    cqs \glissando
    \once \override NoteHead.extra-spacing-width = #'(-3 . 0.5)
    c
  } r4 |

  \time 2/4
  \slashedGrace fs''16^>\sfz
  R2 |

  \tempo 4=72
  \time 3/4
  \tuplet 3/2 { as16\ff\>-> r gs-> r fs-> r }
  \once \override NoteHead.extra-spacing-width = #'(-2.5 . 0.5)
  \tuplet 5/4 { ds-> r c-> r gs-> r e-> r b-> r } |

  \time 3/4
  e,4\ppp r r |

  \tempo 4=63
  \time 2/4
  \tuplet 3/2 {
    \slashedGrace b''8
    \once \override NoteHead.extra-spacing-width = #'(-2 . 0.5)
    c,8\ppp->
    \slashedGrace b' c,
    \slashedGrace b' c,
  }
  \slashedGrace b'' c,16 c r8 |

  \tempo 4=116
  \time 4/4
  d'32\fff\>-> r df-> r c-> r b-> r
  \tuplet 3/2 {as16-> r gs-> r fs-> r }
  \once \override NoteHead.extra-spacing-width = #'(-2.5 . 0.5)
  \tuplet 5/4 { ds-> r c-> r gs-> r e-> r b-> r } |

  \time 3/4
  e,4\ppp r r |

  \tempo 4=66
  \time 2/8
  \once \override TupletBracket.positions = #'(6.5 . 5.5)
  \tuplet 3/2 {
    \slashedGrace g'!8 gs,\pppp-> \slashedGrace g'! gs, \slashedGrace g'! gs,
  } |

  \tempo 4=76
  \time 3/4
  \tuplet 3/2 {gs''16\f\>-> r fs-> r e-> r}
  \once \override NoteHead.extra-spacing-width = #'(-2.5 . 0.5)
  \tuplet 5/4 {cs-> r bf-> r fs-> r d-> r a\ppp-> r} |

  \time 2/4
  R2 |

  \tempo 4=88
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
  \once \override NoteHead.extra-spacing-width = #'(-2.5 . 0.5)
  \tuplet 5/4 {b-+ r gs-+ r e-+ r c-+ r g-+ r} |

  \time 2/4
  c,4(\ppp\glissando
  \once \override NoteHead.extra-spacing-width = #'(-4 . 0.5)
  cqf) |
  R2 |

  \tempo 4=104
  \time 4/4
  bf'''32\ff\>-> r a r af r g r
  \tuplet 3/2 {fs16 r e r d r }
  \once \override NoteHead.extra-spacing-width = #'(-2.5 . 0.5)
  \tuplet 5/4 {\xNotesOn b r gs r e r c r g r \xNotesOff } |

  \time 3/4
  c,4(\ppp\glissando
  \once \override NoteHead.extra-spacing-width = #'(-4 . 0.5)
  cqf) r |

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
  ef,,8\pppp\<(^\markup { \italic "molto accel." } f gf ef f gf) |

  \time 6/8
  \tupletDown
  \once \override TupletBracket.visible-over-note-heads = ##t
  \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -0.5)) Slur
  \tuplet 4/6 { ef16( f \slashedGrace d''^> gf,, ef }
  \once \override TupletBracket.visible-over-note-heads = ##t
  \tuplet 4/6 { f gf \slashedGrace d''^> ef,, f) } |
  \tupletNeutral

  \time 3/4
  \grace {ef'' c} g,8( a bf g a bf) |

  \time 6/8
  \tuplet 4/6 { g16( a \slashedGrace { ef'' c } bf, g }
  \tuplet 4/6 { a bf \slashedGrace { ef' c } g, a) } |

  \time 3/4
  \slurDown
  \tupletDown
  \once \override TupletBracket.stencil = ##f
  \once \override TupletNumber.X-offset = #8
  \tuplet 3/2 { \slashedGrace { g'' e }
  \shape #'((0 . 0) (0 . -1) (0 . 0) (0 . 0)) Slur
                b,8([ cs \slashedGrace { g''16 e } d,8] }
  \tuplet 3/2 { b[ cs \slashedGrace { g''16 e } d,8] }
  \tuplet 3/2 { b8 cs d) } |
  \tupletNeutral
  \slurNeutral

  \time 4/4
  \slurDown
  \slashedGrace { b''16 gs } ef,( f gf ef
  \tuplet 5/4 { f[
    \slashedGrace { b'16 gs }
    gf, ef f
    \slashedGrace { b'16 gs }
    ef,] }
  \tuplet 6/4 { ef[ f gf ef \slashedGrace { b''16 gs } f, gf\ff)] } r4 |
  \slurNeutral

  \tempo 4=80
  \time 2/4
  \tuplet 3/2 { d,16\ppp\<( a' fs }
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
  \slashedGrace as16 d,,,4\sf~(
  \tuplet 7/4 {
    \tieDown
    d8\pppp\<_~
    <d'\flageolet d,\harmonic_~>
    <a'\flageolet d,,\harmonic~>
    <d\flageolet d,,\harmonic_~>
    \tieNeutral
    <fs\flageolet d,,\harmonic>
    a c\ff)
  } |

  \time 5/8
  \shape #'((0 . 0.5) (0 . 2) (0 . 2) (0 . 0.5)) Slur
  \tieDown
  a,,\p\<(~ <a'\flageolet a,\harmonic~> <e'\flageolet a,,\harmonic> a cs\f) |
  \tieNeutral

  \time 4/4
  \tuplet 3/2 {
    \shape #'((-1 . 3) (0 . 0) (0 . 0) (0 . 0)) Slur
    \tieDown
    ef,,,4\ppp\<(~
    \once \stemDown
    <ef'\flageolet ef,\harmonic~>
    <bf'\flageolet ef,,\harmonic~>
    \tieNeutral
  }
  <ef ef,,\harmonic>8 g bf df\ff) |

  \time 2/4
  \tuplet 3/2 {
    c,,,\ppp\<~(
    <c'\flageolet c,\harmonic~>
    \once \override NoteHead.extra-spacing-width = #'(-1.5 . 0.5)
    <g'\flageolet c,,\harmonic>
  }
  \tuplet 5/4 { c16 e g bf c\ff) } |

  \time 3/4
  \tieDown
  ef,,,4\f~(
  \tuplet 7/4 {
    ef8~\pppp\<
    <ef'\flageolet ef,\harmonic~>
    <bf'\flageolet ef,,\harmonic~>
    <ef\flageolet ef,,\harmonic>
    g bf df\ff)
  } |
  \tieNeutral

  \time 7/8
  \shape #'((0 . 2) (0 . 1) (0 . 1) (0 . 1)) Slur
  \tieDown
  f,,,\p\<(~[
  <f'\flageolet f,\harmonic~>
  <c'\flageolet f,,\harmonic~>
  <f\flageolet f,,\harmonic~>
  \tieNeutral
  <a\flageolet f,,\harmonic>\f)] r4 |

  \tempo 4=92
  \time 3/4
  \once \override DynamicText.extra-spacing-width = #'(-0.5 . 2.5)
  \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . 0)) Slur
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
  \once \override NoteHead.extra-spacing-width = #'(-2.5 . 0.5)
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
\shape #'((0 . 1) (0 . 0.5) (0 . 0.5) (0 . 1)) Slur
<d\flageolet d,,\harmonic>8\ppp\>~(
<d\flageolet g,,\harmonic>~
<d\flageolet d,\harmonic>~
<d\flageolet g,,\harmonic>~
\tuplet 3/2 {
  <d\flageolet d,,\harmonic>4~
  <d\flageolet g,,\harmonic>~
  <d\flageolet d,\harmonic>\pppp)
}  |
R1 |

\tempo 4=46
\time 2/4
\tuplet 3/2 { \xNotesOn d,,8\ppppp r r } r4 |
\tuplet 3/2 { \xNotesOn fs8 r r } r4 |
\bar "|."
}

\layout {
  \override Hairpin.minimum-length = #8
  \override Glissando.stencil = #calculate-glissando-slope
}

music = \score {
  \new Staff \with {
    instrumentName = "Flute"
  } {
    \flute
  }
}

\book {
  \music
}

#(set-global-staff-size 18)
\book {
  \bookOutputSuffix "video"
  \paperBlock "video-slide"
  \music
}
