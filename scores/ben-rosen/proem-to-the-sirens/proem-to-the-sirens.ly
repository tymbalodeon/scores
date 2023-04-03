\version "2.25.3"

\include "settings.ily"
\include "style.ily"

\header {
  title = "Proem to the Sirens"
  composer = "Ben Rosen"
}

global = {
  \numericTimeSignature
  \time 4/4
  \tempo 4=69
}

sopranoSax = \relative c' {
  \global
  r2 r4 r16 bf8.\ff~ |
  \time 5/8
  bf4.~ bf8. bf16->~ |
  \time 3/8
  bf8. bf->~ |
  \time 2/4
  bf8. bf16->~ bf16 bf8-> bf16->~ |
  \time 5/8
  bf8 \acciaccatura bf-> d4->~ d16 d8.->~ |
  \time 4/4
  d2~ d4~ d16 d8.->~ |
  \time 5/8
  d4.~ d8. d16->~ |
  \time 3/8
  d8 \acciaccatura d-> bf4->~ |
                                % \time 3/4
  bf8 \acciaccatura bf-> d->~ d16 bf8-> d16->~ d bf-> d-> r |
  \time 4/4
  ef'2.\pp r4 |
  r2 r4 r16 bf,8.\ff~ |
  \time 5/8
  bf4.~ bf8. bf16->~ |
  \time 3/8
  bf8. bf->~ |
  \time 2/4
  bf8. bf16->~ bf16 bf8-> bf16->~ |
  \time 5/8
  bf8 \acciaccatura bf-> d4->~ d16 d8.->~ |
  \time 4/4
  d2~ d4~ d16 d8.->~ |
  \time 5/8
  d4.~ d8. d16->~ |
  \time 3/8
  d8 \acciaccatura d-> fs4->~ |
                                % \time 3/4
  fs8 \acciaccatura d-> fs->~ fs16 d8-> fs16->~ fs d-> fs-> d32 fs |
  \time 4/4
  cs'2.\ppp r16 d,8.->\ff~ |
  \time 5/8
  d4.~ d8. \acciaccatura d8-> fs16~ |
                                % \time 3/8
  fs8. \acciaccatura d8-> fs8.~ |
                                % \time 2/4
  fs8. \acciaccatura d8-> fs16~ fs \acciaccatura cs8-> a' a16~ |
                                % \time 3/8
  a8 \acciaccatura cs,8-> a'4~ |
                                % \time 5/8
  a4.~ a8. \acciaccatura fs8-> as16~ |
                                % \time 3/8
  as8. \acciaccatura f!8-> cs'8.~ |
                                % \time 2/4
  cs \acciaccatura d,8-> fs16~ fs \acciaccatura cs8-> a' a16~ |
                                % \time 3/8
  a8 \acciaccatura f-> cs'4~ |
                                % \time 5/8
  cs8 \acciaccatura bf-> d4~ d16 d8.~ |
                                % \time 3/8
  d8 \acciaccatura d,-> fs4~ |
                                % \time 3/4
  fs8 \acciaccatura d-> fs~ fs16 \acciaccatura cs8-> a' as16~ as fs-> as-> f32-> cs'-> |
  \time 3/8
  as-> fs'-> as,-> r r8 r |
  \time 2/4
  \tuplet 3/2 {bf,4\f d d} |
  \time 4/4
  \tuplet 3/2 {b!2 ef'4\p~} ef2 |
  \time 3/4
  \tuplet 3/2 {b,4\f d d} b\p |
  ef'8\f g,4 g8~ g4 |
  \time 2/4
  \acciaccatura cs8-> g4\p g |
  bf8\ff g gf d |
  bf'\pp g~ g16 fs d8 |
  b'2\fermata\ppp |
  \time 4/4
  r2 r4 r16 bf,8.->\ff~ |
  \time 5/8
  bf4 bf8-> bf-> bf-> |
  \tuplet 4/6 {bf16-> bf-> bf-> bf->}
  \time 2/4
  bf8-> bf-> \tuplet 7/4 {bf16-> d fs bf df e g}
  \time 5/8
  a8-. r16 bf,,8.->~ \tuplet 7/4 {bf16 d fs bf df e g}  |
  \repeat volta 2 {
    \time 4/4
    \parenthesize a8-. s^\markup \box {"improvised solo"} s2. |
    \time 5/8
    s4. s4 |
    \time 3/8
    s4. |
    \time 2/4
    s2 |
                                % \time 5/8
    s4. s4 |
                                % \time 4/4
    s1 |
    \time 5/8
    s4. s4 |
    \time 3/8
    s4. |
                                % \time 2/4
    s2 |
    \time 3/8
    s4. |
    \time 4/4
    s1 |
    \time 5/8
    s4. s4 |
                                % \time 3/8
    s4. |
    \time 2/4
    \parenthesize r4 \tuplet 7/4 {bf,,16-> d fs bf df e g} |
  }
  \tempo 4=120
  \time 3/4
  a2.\pp\fermata |
  \time 4/4
  d,4 a' g, bf |
  \time 5/4
  a'2 \acciaccatura cs,8 a'4 r2 |
  \time 2/4
  d,4 a' |
  \time 3/4
  g, bf ef |
  \time 2/4
  g, d' |
  \time 3/4
  a'2. |
  \time 2/4
  \acciaccatura cs,8 a'2
  \tuplet 3/2 {g,4 bf \acciaccatura cs8 ef4}
  \time 3/4
  cs4 ef2 |
  f8 ef4 f8  c4 |
  \time 7/8
  \set Staff.beatStructure = #'(3 2 2)
  \acciaccatura f8 c,8 ef g as c, g' as |
  \time 3/4
  cs2. |
  f8 ef4 f8  c4 |
  a'2. |
  \tuplet 3/2 {g,4 bf \acciaccatura cs8 ef4} cs
  \time 7/8
  \acciaccatura f8 c,8 ef g as c, g' as |
  \time 2/4
  cs4 r |
  \tempo 4=69
  \tuplet 3/2 {bf\f d, d'}
  \time 4/4
  \tuplet 3/2 {g,2 gf'4\p~} gf2 |
  \time 3/4
  \tuplet 3/2 {bf,4\f d, d'} g,\p |
  gf8\f d4 ef8~ ef4 |
  \time 2/4
  \acciaccatura fs8-> d4\p ef |
  d'8\ff b ef g, |
  d'\pp b~ b16 cs g8 |
  \tuplet 3/2 {g4\ppp af2\fermata} |
  \tempo 8=120
  \time 6/8
  bf2.\p |
  \tuplet 3/2 {b'!8\f cs b} bf,\p~ bf4. |
  bf'16\f cs bf af bf,8\p~ bf4.~ |
  bf2. |
  \tuplet 3/2 {d16\f f d} bf8\p \tuplet 3/2 {fs16\f as fs} \tuplet 3/2 {d fs d} r8 r |
  \time 2/8
  d32 fs as d f af b cs |
  \time 6/8
  \tuplet 3/2 {g8\f a g} bf,\p~ bf4.~ |
  bf2. |
  \tuplet 3/2 {df16\f f df} bf8\p \tuplet 3/2 {fs16\f as fs} bf8\p~ \tuplet 3/2 {bf16\f d,! bf'} r8 |
  \time 2/4
  bf,16 d fs bf df e g a |
  \time 6/8
  b,!32\ff cs b as d,!4\p~ d4. |
  \time 2/8
  gs32 as gs fs d8 |
  \time 2/4
  \tuplet 5/4 {g!32 a! g fs g} d8 \tuplet 6/4 {e32 fs e d e d} d8 |
  \tempo 4=69
  bf8\ff bf bf4 |
  \time 3/8
  d4. |
  \time 5/8
  cs4.~ cs 4 |
  \time 4/4
  bf1 |
  \time 5/8
  bf4.~ bf 4|
  \time 3/8
  cs'4. |
  \time 2/4
  bf,4 bf8 bf |
  \time 4/4
  bf2~ bf4. a''8-.\pp \bar "|."
}

altoSax = \relative c {
  \global
                                % Music follows here.
  bf'1\ff-> |
  \time 5/8
  bf4.->~ bf4 |
  \time 3/8
  bf4.-> |
  \time 2/4
  bf4-> bf8-> bf-> |
  d4.->~ d4 |
  \time 4/4
  d1-> |
  \time 5/8
  d4.-> \acciaccatura d8-> bf4-> |
  \time 3/8
  bf4.-> |
  \time 3/4
  \acciaccatura bf8-> d4-> bf8-> \acciaccatura d-> bf-> bf16-> d-> bf-> r |
  \time 4/4
  bf2.\pp r4 |
  bf1\ff-> |
  \time 5/8
  bf4.->~ bf4 |
  \time 3/8
  bf4. |
  \time 2/4
  bf4-> bf8-> bf-> |
  d4.->~ d4 |
  \time 4/4
  d1-> |
  \time 5/8
  d4.-> \acciaccatura d8-> bf4-> |
  \time 3/8
  bf4.-> |
  \time 3/4
  \acciaccatura bf8-> d4-> bf8-> \acciaccatura d-> bf-> bf16-> d-> bf-> d32 bf |
  \time 4/4
  fs2.\ppp r4 |
  \time 5/8
  bf4.->\ff \acciaccatura d8-> bf4 |
  \time 3/8
  \acciaccatura d8 bf4. |
  \time 2/4
  \acciaccatura d8-> bf4 \acciaccatura ef8-> g,8 g |
  \time 3/8
  \acciaccatura d'-> bf4. |
  \time 5/8
  \acciaccatura ef8-> g,4. \acciaccatura fs'8-> d4 |
  \time 3/8
  \acciaccatura g8-> b,4. |
  \time 2/4
  \acciaccatura g'8-> b,4 \acciaccatura fs'8-> d \acciaccatura g-> b, |
  \time 3/8
  \acciaccatura fs'-> d4. |
  \time 5/8
  \acciaccatura d8-> bf4.-> \acciaccatura ef8-> g,4-> |
  \time 3/8
  \acciaccatura d'8-> bf4. |
  \time 3/4
  \acciaccatura bf8-> d4-> bf8-> \acciaccatura ef8-> g,-> d'16-> fs-> d-> g32-> b,-> |
  \time 3/8
  fs'-> as-> fs-> r r8 r |
  \time 2/4
  \tuplet 3/2 {d4\f bf d} |
  \time 4/4
  \tuplet 3/2 {g,2 gf'4\p~} gf2 |
  \time 3/4
  \tuplet 3/2 {d4\f bf d} g,\p |
  gf'8\f d4 ef8~ ef4 |
  \time 2/4
  \acciaccatura fs,8-> d'4\p ef |
  d8\ff b ef g, |
  d'\pp b~ b16 cs g8 |
  \tuplet 3/2 {g2\ppp af4\fermata}
  \time 4/4
  d,1\ff-> |
  \time 5/8
  d4.->~ d4 |
  \time 3/8
  d4.-> |
  \time 2/4
  d4-> d8-> d-> |
  \time 5/8
  d'4.->~ d4 |
  \repeat volta 2 {
    \time 4/4
    d1 |
    \time 5/8
    d4.~ d4 |
    \time 3/8
    d4. |
    \time 2/4
    d4 d8 d |
    \time 5/8
    \acciaccatura bf8 d4.~ d4 |
    \time 4/4
    \acciaccatura fs,8 d'1 |
    \time 5/8
    d4.  \acciaccatura bf8 d4 |
    \time 3/8
    d4. |
    \time 2/4
    \acciaccatura fs,8 d'4 d8 d |
    \time 3/8
    bf16 d bf r r ef |
    \time 4/4
    fs,1 |
    \time 5/8
    fs4.~ fs4 |
    \time 3/8
    \acciaccatura {gf'8 ef} fs,4. |
    \time 2/4
    fs4 fs8 \acciaccatura g' fs, |
  }
  \tempo 4=120
  \time 3/4
  f''!2.\pp\fermata |
  \time 4/4
  bf,4 f' c, ef |
  \time 5/4
  f'2 \acciaccatura fs,8 f'!4 r2 |
  \time 2/4
  bf,4 f' |
  \time 3/4
  c, ef c' |
  \time 2/4
  c, bf' |
  \time 3/4
  f'2. |
  \time 2/4
  \acciaccatura fs,8 f'!2
  \tuplet 3/2 {c,4 ef \acciaccatura fs8 c'4}
  \time 3/4
  fs4 c2 |
  a8 c4 a8  ef4 |
  \time 7/8
  \set Staff.beatStructure = #'(3 2 2)
  \acciaccatura a8 g,8 bf d fs g, d' fs |
  \time 3/4
  as2. |
  a!8 c4 a8  ef4 |
  f'2. |
  \tuplet 3/2 {c,4 ef \acciaccatura fs8 c'4} fs,
  \time 7/8
  \acciaccatura a8 g,8 bf d fs g, d' fs |
  \time 2/4
  a4 r |
  \tempo 4=69
  \tuplet 3/2 {d,\f bf' d,}
  \time 4/4
  \tuplet 3/2 {b!2 ef,4\p~} ef2 |
  \time 3/4
  \tuplet 3/2 {d'4\f bf' d,} b!\p |
  ef'8\f g,4 g8~ g4 |
  \time 2/4
  \acciaccatura cs8-> g4\p g |
  bf8\ff g gf d |
  bf'\pp g!~ g16 fs d8 |
  b'!2\ppp\fermata |
  \tempo 8=120
  \time 6/8
  bf2.\p~ |
  bf2.~ |
  bf2. |
  \tuplet 5/4 {f'16\f af f d f} bf,8\p~ bf4.~ |
  bf8 \tuplet 3/2 {bf16\f d bf~} bf8\p \tuplet 3/2 {d,16\f fs d} r8 r |
  \time 2/8
  bf4 |
  \time 6/8
  bf'2.\p |
  \tuplet 3/2 {e8\f g e} bf\p~ bf4.~ |
  bf8 \tuplet 3/2 {bf16\f d bf~} bf8\p  \tuplet 3/2 {d,16\f fs d} \tuplet 3/2 {bf d bf} r8 |
  \time 2/4
  fs16 as d fs a! c ef f! |
  \time 6/8
  d,2.\p~ |
  d8 f32\ff gf f d |
  \time 2/4
  d8\p \tuplet 5/4 {fs32\ff g fs e fs} d8\p \tuplet 6/4 {cs32\ff d cs bf cs a} |
  \tempo 4=69
  bf8\ff bf bf4 |
  \time 3/8
  bf4. |
  \time 5/8
  fs4.~ fs 4 |
  \time 4/4
  bf1 |
  \time 5/8
  bf4.~ bf 4|
  \time 3/8
  fs4. |
  \time 2/4
  bf4 bf8 bf |
  \time 4/4
  bf2~ bf4. f''8-.\pp \bar "|."
}

sopranoSaxPart = \new Staff \with {
  instrumentName = "Soprano"
  shortInstrumentName = "S."
} {
  \clef "treble" \sopranoSax
}

altoSaxPart = \new Staff \with {
  instrumentName = "Alto"
  shortInstrumentName = "A."
} {
  \clef "treble" \altoSax
}

\score {
  <<
    \new StaffGroup <<
      \sopranoSaxPart
      \altoSaxPart
    >>
  >>
}
