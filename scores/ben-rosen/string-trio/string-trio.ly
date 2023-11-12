\version "2.25.10"

\include "helpers/settings.ily"

\header {
  title = "String Trio"
  composer = "Ben Rosen"
}

viola = \relative df {
  \clef "alto"
  \time 3/2
  \tempo 4 = 60

  r1 df2 ~ _\pp _\<
  df1 e2 ~ _\! _\pp _\<
  e1 _\mp df2 ~ _\! _\pp _\< _\<
  df1 _\mp a'2 ~ _\! _\! _\p _\<
  a1 _\mp ef2 ~ _\! _\p _\<
  ef1 _\mf gf2 ~ _\! _\p _\<
  gf2 _\mf _ "accel." f1 ~ _\! _\p _\<
  f1 _\mf

  \tempo 4=76

  gf2 -> \breathe _\! _\f
  b1.
  df1. ~ _\! _\>
  df1. ~ _\pp _ "accel." _\<
  df1

  \tempo 2=48

  d2 -> \breathe _\! _\ff
  e1 f2
  af2 _ "accel." _\< a2 b2
  c1 _\markup{ \bold\small {A tempo} } g2
  ef'1

  \tempo 2=58

  e2 -> \breathe _\! _\fff
  c2 a2 _\> f2 _\!
  ef1 _\f _ "rit." d2
  d1. -> _\! _\<

  \tempo 2=48

  ef1. ~ -> \breathe _\ff
  ef1. ~ _\>
  ef1. ~ _\!
  ef1. ~ _\! _\mf _\<
  ef2 _\fff r1

  \tempo 4=60

  r1 df,2 ~ _\pp _\<
  df2 \glissando s2 _\!
  _\mp e2 ~ _\pp _\<
   e2 \glissando s2 _\! _\mp
  c2 ~ _\pp _\<
   c2 \glissando s2 _\! _\mp
  f2 ~ _\p _\<
   f2 \glissando s2 _\! _\mf
  gf2 ~ _\p _\< | \barNumberCheck #30
   gf2 \glissando s2 _\!
  _\mf g2 ~ _\p _\<
   g2 \glissando _ "accel."
  s2 _\! _\mf b2 ~ _\p _\<

  b1

  \tempo 4=76

  c2 -> \breathe _\! _\f
  d1.
  ef1. ~ _\! _\>
  ef1. _\pp _ "accel." _\<
  f1

  \tempo 2=48

  g2 -> \breathe _\! _\ff
  bf1 _ "accel." c2 _\<
  \clef "treble" d2 ef2 f2
  g1 _\markup{ \bold\small {A tempo} } ef2
  bf'1

  \tempo 2=58

  c2 -> \breathe _\! _\fff
  g2 ef2 _\> c2 _\!
  \clef "alto" bf1 _\f _ "rit." ef,2 ~
  ef1 -> _\< d2 _\!

  \tempo 2=48

  ef2 ~ -> \breathe _\fp _\<
  ef1 \glissando _\!
  g2 ~ _\fp _\<  g1
  \glissando _\!
  gf2 ~ _\fp _\<  gf1
  \glissando _\!
  ef1 ~ _\fp _ "rit." _\< ef4 _\! _\ff r4

  \tempo 4=76

  d2 ~ -> \breathe _\fp _\<
   d1 \glissando _\!
  b1. _\! _\f _\mp _\< | \barNumberCheck #50
  bf1. ~ _\! _\f _\ppp _\< _\>
  bf2 _\! _\fff _\ppp r1

  \bar "|."
}

cello = \relative a, {
  \clef "bass"
  \time 3/2

  r2 a1 ~ _\pp _\<
  a2 c1 ~ _\! _\pp _\<
  c2 _\mp f,1 ~ _\! _\pp _\<
  f2 _\mp c'1 ~ _\! _\p _\<
  c2 _\mp b'1 ~ _\! _\p _\<
  b2 _\mf f1 ~ _\! _\p _\<
  f2 _\mf gf2 _\! _\p _\< a,2 ~
  a1 _\mf bf2 ~ -> \breathe _\! _\f
  bf2 e1 ~
  e2 gf1 ~ _\! _\>
  gf1. ~ _\pp _\<
  gf1 af2 ~ -> \breathe _\! _\ff
  af1 a2
  e'2 _\< d2 c2
  a2 df1 ~
  df1 d2 ~ -> \breathe _\! _\fff
  d2 b2 _\> g2 ~ _\!
  g1. _\f
  d1. -> _\! _\<
  bf'1. ~ -> \breathe _\ff
  bf1. ~ _\>
  bf1. ~ _\!
  bf1. ~ _\! _\mf _\<
  bf2 _\fff r1
  r2 a,2 ~ _\pp _\<  a2
  \glissando s2 gf2 ~ _\! _\pp _\<
  gf2 \glissando s2 _\mp af2 ~ _\! _\pp _\<
  af2 \glissando s2 _\mp df2 ~ _\! _\p _\<
  df2 \glissando s2 _\mp d2
  ~ _\! _\p _\<  d2
  \glissando s2 _\mf ef2 ~ _\! _\p _\<
   ef2 \glissando s2 _\mf d1 ~ _\! _\p _\<
  d1 _\mf ef2 ~ -> \breathe _\! _\f
  ef2 bf'1 ~
  bf2 g1 ~ _\! _\>
  g1. _\pp _\<
  ef1 d'2 ~ -> \breathe _\! _\ff
  d1 ef2 _\<
  bf2 af2 g2
  d2 g1 ~
  g1 d'2 ~ -> \breathe _\! _\fff
  d2 b2 _\> g2 ~ _\!
  g2 _\f a1
  d,1. -> _\! _\<
  bf'2 ~ -> \breathe _\fp _\<
  bf1 \glissando _\!
  d2 ~ _\fp _\<  d1
  \glissando _\!
  df2 ~ _\fp _\<  df1
  \glissando _\!
  bf1 ~ _\fp _\< bf4 _\! _\ff r4
  a2 ~ -> \breathe _\fp _\<
  a1 \glissando _\!
  gf1. _\! _\f _\mp _\< | \barNumberCheck #50
  gf1. ~ _\! _\f _\ppp _\< _\>
  gf2 _\! _\fff _\ppp r1

  \bar "|."
}

bass =  \relative f {
  \clef "bass" \time 3/2 \key c \major \transposition c
  f1. _\pp _\<
  bf1. _\! _\! _\mp _\pp _\<
  ef,1. _\! _\mp _\pp _\<
  bf1. _\! _\mp _\p _\<
  af'1. _\! _\mf _\p _\<
  e1. -\! _\mf _\p -\<
  bf1. ~ _\mf _\p _\<
  bf1 ef2 ~ -> \breathe _\! _\f
  ef1 c'2 ~
  c1 f,2 _\<
  d2 b2 g2
  e1 a''2 ~ -> \breathe _\! _\ff
  a2 df,2 gf,2
  d2 _\< c2 b2
  bf1 gf2
  e1 c'2 -> \breathe _\! _\fff
  bf'2 g2 _\> ef2 _\!
  a,1. _\f
  d1. -> _\! _\<
  g,1. \breathe _\! _\ff _\mf _\<
  c,1. _\! _\ff _\mf _\<
  b'1. _\! _\ff _\mf _\<
  af1. ~ _\! _\ff _\mf _\<
  af2 _\fff r1
  f'2 ~ _\pp _\<  f1
  \glissando _\!
  d2 ~ _\mp _\pp _\<  d1
  \glissando _\!
  df2 ~ _\mp _\pp _\<  df1
  \glissando _\!
  bf2 ~ _\mp _\p  bf1
  \glissando
  g2 ~ _\mp _\p  g1
  \glissando
  e'2 ~ _\mp _\p  e1
  \glissando
  c1. ~ _\mp _\p _\<
  c1 af2 ~ -> \breathe _\! _\f
  af1 f2 ~
  f1 c''2 _\<
  af2 f2 d2
  b1 ef'2 ~ -> \breathe _\! _\ff
  ef2 g,2 c,2 _\<
  af2 g2 f2
  ef1 d2
  c1 af'2 -> \breathe _\! _\fff
  bf'2 g2 _\> ef2 _\!
  d1. _\f
  d1. -> _\! _\<
  g,1. \breathe _\! _\f _\mf _\<
  c,1. _\! _\ff _\mf _\<
  b'1. _\! _\ff _\mf _\<
  af1 ~ _\ff _\mf _\< af4 _\! _\ff r4
  g1. -> \breathe _\! _\mf _\<
  e1. _\! _\ff _\mp _\<
  ef1. ~ _\! _\f _\ppp _\< _\>
  ef2 _\! _\fff _\ppp r1

  \bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "Viola"
    } {
      \viola
    }
    \new Staff \with {
      instrumentName = "Cello"
    } {
      \cello
    }
    \new Staff \with {
      instrumentName = "Bass"
    } {
      \bass
    }
  >>
}
