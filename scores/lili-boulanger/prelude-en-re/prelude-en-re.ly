\version "2.23.82"

\include "settings.ily"
\include "style.ily"

\header {
  title = \markup { "Prélude en Ré" \flat }
  composer = "Lili Boulanger"
}

key_signature = \key df \major

third = \new Staff \with {
  alignAboveContext = "upper"
  \remove "Time_signature_engraver"
} {
  r8 f af4. gf8 f ef |
  ef df r4 r2 |
}

middle = \relative c'' {
  <bf' f>8 <f af,> <bf f> <f af,> r <bf ef,> <a f> <f a,> |
  <bf f>8 <ef, af,> r <ef af,> <bf' f> <f af,> <bf f> <ef, af,> |
  <f ef cf gf>8 <ef gf,> <f cf> <ef gf,> r <ef gf,> <f cf> <ef gf,> |
}

upper = \relative c' {
  \clef treble
  \key_signature
  \time 4/4

  r4 <df ef f>2 <b df ef g>4 |
  <df ef f a> <ef f bf>2 r4 |
  r <df ef f>2 <b df ef g>4 |
  <ef f a>8 c' <ef, f bf> r r4 <ef f a>8 c' |

  bf8 f'4.~ f8 f, <a ef a,>4 |
  <<
    \new Voice {
      \voiceOne r8 f' af2.~ |
      af8 gf f ef ef df r4 |
      r8 f bf4~ bf8 f a f |
    }
    \new Voice {
      \voiceTwo <bf,, f' bf>4 r r <a ef' a> |
      <bf' f bf,> r r <a ef a,> |
      <bf f bf,> r r <f' df a> |
    }
  >>

  <bf,, f' bf>8 f'' af4. gf8 <f, a df f> ef' |
  <ef, bf' ef> df' r4 r8 f,4 f8 |
  f' f,4 f8 f'8 f, <ef'  f> f, |
  <f' gf> <ef gf, f> <f gf> <ef gf, f>4 <ef gf, f>8 <f gf> <ef gf, f> |

  <a ef> <f a,> <c' ef,> <f, a,> r <ef a,> <a ef> <ef a,> |

  <<
    \third
    \middle
  >>


  \time 3/4

  <g ds cs f,> <b, ds> <g' cs> <ds a> <g cs, b> <ds cs f,> |
  <a' f ef> <ef gf, f>4 <ef gf, f>8 <a f ef> <cs, gf f> |

  \time 4/4
  <f f,>8. <cs a>16 <f f,>8. <cs a>16 <f df g, f>8 <df bf> <f df g, f> <df bf> |
  <f f,>8. <cs a>16 <f f,>8. <cs a>16
  \tuplet 5/4 { <f df g, f>8 <df bf> <f df g, f> <df bf> <f df g, f> } |

  \time 3/4

  \repeat unfold 2 {
    <d d,>16. <af bf>32 <d d,>16. <af bf>32 <d d,>16. <af bf>32
    r16. <af bf>32 <c c,>16. <af bf>32 <df df,>16. <af bf>32 |
  }

  \time 4/4

  <af'' af,>8 <g g,> <f f,> <ef ef,> <c c,> <b b,> <a a,> <g g,> |
  <f' f,> <ef ef,> <c c,> <b b,> <a a,> <g g,> <f f,> <ef ef,> |
  \repeat unfold 2 {
    <cs cs,> <b b,> <a a,> <g g,>4 <f f,> <ef ef,>8 |
  }

  \clef "bass"
  <b g d>2

  \clef "treble"
  <ef ef'>4 <ef' ef'> |
  <ef ef'> <ef, ef'> <ef' ef'> <ef ef'> |
  <ef, ef'> <ef' ef'> <ef, ef'> <ef' ef'> |
  <ef ef'> <ef, ef'> <ef' ef'> <ef ef'> |
  <ef, ef'> <ef' ef'> <ef, ef'> <ef' ef'> |
  <ef, ef'> <a' ef a,>2 <bf f bf,>4 |
  <ef ef, ef,> <ef ef, ef,> <ef, ef, ef,> <ef, ef, ef,> |
  R1 |

  \bar "|."
}

lower = \relative c {
  \clef bass
  \key_signature
  \time 4/4

  \ottava #-1 <df, df,>1 \ottava #0 |
  <a'' b>4 <af df>2 \ottava #-1 <df,,, df' af'>4~ |
  <df df' af'>4 \ottava #0 r4 r2 |
  <a''' b df>4 <af df>8 r \ottava #-1 <df,,, df' af'>4 \ottava #0 <b''' df>4 |

  <af df ef f> r \ottava #-1 <df,,, df' af'> \ottava #0 <f' df' f> |
  \repeat unfold 2 {
    <df af' df> \ottava #-1 <df, df'>2 \ottava #0 <f' df' f>4 |
  }

  \repeat unfold 2 {
    <df af' df> \ottava #-1 <df, df'>2 \ottava #0 <f' a df f>4 |
  }
  <df af' df> <df af' df af'>2 r4 |
  r

  \clef "treble"
  <cf''' ef>2 <f, a c>4 |
  <c a> <ef g>2 <f a>4 |

  <f ef b> <f df b>

  \clef "bass"
  <df,, df' af'>

  \clef "treble"
  <f'' ef b>

  <f df af> r

  \clef "bass"
  <df,, df' af'>2 |

  r4 <df df' af'>2

  \clef "treble"
  f''4 |
  f2 ef4 f8 gf |

  \time 3/4

  g8 f4 g8 a b |
  c4 b cs8 ds |

  \time 4/4
  \clef "bass"
  <a,, df gf>2
  <<
    \tuplet 3/2 { bf'4 ef c }
    <df, g>2
  >> |

  <a df gf>2
  <<
    \tuplet 5/4 { bf'8 c df ef f }
    <df, g>2
  >> |

  \clef "treble"
  <<
    { g'8 a4 bf c8 }
    <bf, df>2.
  >> |

  <<
    { g'8 a4 bf c8 }
    <af, df>2.
  >> |

  \time 4/4
  \clef "bass"
  \repeat unfold 2 {
    <<
      { <af df f>4 <g ef bf>2 <a f c>4 }
      \new Voice { af,,,1 }
    >> |
  }

  \repeat unfold 2 {
    <b''' g d>4 b2 <c af f ef>4 |
  }

  <c c,>8 <b b,> <a a,> <g g,>4 <f f,> <ef ef,>8 |
}

\layout {
  \context {
    \Score
    \consists #(set-bars-per-line '(4))
  }
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } {
    <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  }
}
