\version "2.20.0"
% \version "2.19.83"
\language "english"
\pointAndClickOff
\paper {
  #(set-paper-size "c4")
  % #(set-paper-size "letter")
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.5\in
}

\header {
  tagline = ##f
  title = "Night And Day"
  subtitle = "Piano Solo by Bill Evans"
  subsubtitle = "from the Album \"Everybody Digs Bill Evans\""
  composer = "Cole Porter"
}

aFirst = \relative c'' {
  bf4  r4 r2 |
  g8 af bf cf df cf bf af |
  g4 af8 g bf4 r |
  R1 |

  \break

  r8 cf, ef g bf af df cf |
  e d \tuplet 3/2 { df16 d df } cf8 bf af f fs |
  g bf f ef d4 c |
  r2 r4 \tuplet 3/2 { r8 g'4 } |

  \break

  f8 ef~ \tuplet 3/2 { ef g c } d ef f gf |
  ef cf bf af g f gf e |
  f ef bf g d' ef d c |
  b c \tuplet 3/2 { d ef f } gf af a b |

  \break
  
  c af f ef r2 |
  r4 r8 af, d4 f8 cf' |
  bf af g bf f ef d bf
  c g r4 r r8 af |

  \break 
  
  \bar "||"
}

aSecond = \relative c' {
  \tuplet 3/2 { cf8 ef4 } g8 bf df e g bf |
  df <e e,>4 d8 df cf bf af |
  g bf f ef \tuplet 3/2 { d16 ef d } c8 bf g |
  f ef d ef d c r4 |

  \break

  r8 f, \tuplet 3/2 { c' ef g } \tuplet 3/2 { bf df e } \tuplet 3/2 { g bf df } |
  \tuplet 3/2 { <e, e'>4 <g g'> gf' } f8 ef~ \tuplet 3/2 { ef ff d } |
  ef cs d c \tuplet 3/2 { bf16 c bf } g8 \tuplet 3/2 { f16 g f } ef8
  d c bf g f ef d ef

  \break

  g c ef4 \acciaccatura e8 f4 \acciaccatura e8 f4 |
  \acciaccatura e8 f ef \tuplet 3/2 { f ef cf } bf af g gf |
  f ef d bf c4 g |
  r \tuplet 3/2 { r8 d''4 } f8 ef \tuplet 3/2 { d16 ef d } c8 |

  \break

  bf4 r r2 |
  r4 r8 bf \repeat unfold 2 { \tuplet 3/2 { df16 d df } bf8 }
  \tuplet 3/2 { df16 d df } bf8 g ef d c r4 |
  R1 |

  \break
  
  \bar "||"
}

bridge = \relative c'' {
  r8 bf df f af gf bf g |
  f ef r4 r r8 d |
  \tuplet 3/2 { f c ef } \tuplet 3/2 { bf c g } \tuplet 3/2 { bf f g } \tuplet 3/2 { d f c } |
  \tuplet 3/2 { ef bf c } \tuplet 3/2 { g bf f } \tuplet 3/2 { g d f } c r |

  \break

  r2 \ottava #1 af''''16 ef gf df ef bf df af |
  bf g \ottava #0 r8 r af16 ef gf df d bf df af r8 |
  e''16 b d bf c g bf f g d f c ef bf c g |
  \ottava #-1 bf f g d f c ef bf c g bf f g d f c \ottava #0 |

  \break

  r4 \tuplet 3/2 { r8 g'' c } \tuplet 3/2 { ef g c } ef f~ |
  f2 r8 ef \tuplet 3/2 { df16 ef df } cf8 |
  bf af g bf f ef d ef |
  <<
    { f gf f ef d ef d c }
    { d ef d c b c bf af }
  >> |

  \break

  bf2 r8 \tuplet 3/2 { af16 bf af } g8 f |
  e f af c ef4 d8 f |
  bf,16 c bf af g8 bf f ef d bf |
  c4 r r2 |

  \break
  
  \bar "||"
}

aThird = \relative c'' {
  r4 r8 bf~ bf af df cf |
  e d g f bf af g f |
  \acciaccatura fs16 g4. \acciaccatura { gs16 a as } bf8 f ef d bf |
  c4 r r2 |

  \break
  
  r8 bf~ bf4 bf4. bf8 |
  r2 r4 r8 bf |
  d bf bf g g d d bf |
  c4 r r2 |

  \break

  \tuplet 3/2 { r4 g' c } \tuplet 3/2 { d ef d8 c } |
  b b r4 r2 |
  r8 a16 bf \tuplet 3/2 { g8. bf16 g f } ef8 d f ef |
  d c r4 r8 d16 c b c \tuplet 3/2 { d ef f } |

  \break

  c4 r r bf16 g a g |
  \tuplet 5/4 { af bf c ef g } f c ef cs \tuplet 5/4 { d f af cf af32 a } bf16 f af gs |
  \tuplet 5/4 { g bf d f d } ef bf r8 r2 |
  \acciaccatura { bf16 a af } g4 \acciaccatura { bf16 a af } f4 \acciaccatura { bf16 a af } ef8 g bf df~ |

  \break
  
  \bar "||"
}

aFourth = \relative c'' {
  df \acciaccatura { ef,16 af } df8 d4 \acciaccatura { e,16 a } ef'4 \acciaccatura { f,16 bf } e4 |
  \acciaccatura { fs,16 b } ef?4 \acciaccatura { f,16 bf } d4 \acciaccatura { e,16 a } df4 r |
  r8 bf16 g f8 ef d ef d c |
  bf g r4 r2 |

  \break

  <<
    <<
      { \tuplet 3/2 { r4 df'' ef } \tuplet 3/2 { e e e } }
      { \tuplet 3/2 { r4 af, bf } \tuplet 3/2 { b b b } }
    >>
    \\
    <<
      { \tuplet 3/2 { r4 ef, f } \tuplet 3/2 { gf gf gf } }
      { \tuplet 3/2 { r4 bf, c } \tuplet 3/2 { df df df } }
    >>
  >> |
  <<
    <<
      { \tuplet 3/2 { e' ef df } r4 df8 cf }
      { \tuplet 3/2 { b4 bf af } r4 af8 gf }
    >>
    \\
    <<
      { \tuplet 3/2 { gf4 f ef } r4 ef8 df }
      { \tuplet 3/2 { df4 c bf } r4 bf8 af }
    >>
  >> |
  <<
    <<
      { bf' bf~ bf2 r4 }
      { f8 f~ f2 r4 }
    >>
    \\
    <<
      { c8 c~ c2 r4 }
      { g8 g~ g2 r4 }
    >>
  >> |
  <<
    { r8 \ottava #-1 d' f d ef <f bf,> \ottava #0 r4 }
    \\
    { r8 d, f d ef f r4 }
  >> |

  \break

  <<
    <<
      { r8 g'' g4 s2 }
      { r8 \acciaccatura cs,16 d8 s4 \tuplet 3/2 { \acciaccatura cs16 <g' d a>4 <g a,> \acciaccatura cs,16 <g' d a>4 } }
      { r8 a, a4 s2 }
    >>
    \\
    <<
      { r8 g g4 \tuplet 3/2 { g g g } }
      { r8 ef ef4 \tuplet 3/2 { ef ef ef } }
      { r8 a, a4 \tuplet 3/2 { a a a } }
    >>
  >> |
  <<
    <<
      % { \tuplet 5/4 { gf'' gf gf gf gf } }
      { \tuplet 5/4 { df' s df s df } }
      { \tuplet 5/4 { cf s cf s cf } }
      { \tuplet 5/4 { s af s af s } }
    >>
    \\
    <<
      { \tuplet 5/4 { gf gf gf gf gf } }
      { \tuplet 5/4 { df df df df df } }
      { \tuplet 5/4 { af af af af af } }
    >>
  >> |
  <<
    <<
      % { \tuplet 5/4 { f'' f f f s } }
      { \tuplet 5/4 { c'? s c s d~ } }
      { \tuplet 5/4 { bf s bf s b~ } }
      { \tuplet 5/4 { s g s g a~ } }
    >>
    \\
    <<
      { \tuplet 5/4 { f f f f f~ } }
      { \tuplet 5/4 { c c c c c~ } }
      { \tuplet 5/4 { g? g g g gf~ } }
    >>
  >> |
  <<
    <<
      { d''8 ef~ ef4 d8 ef c d }
      { b8 c~ c4 b8 c a bf }
      { a8 s s4 s s }
    >>
    \\
    <<
      { f8 f~ f4 f r }
      { c8 c~ c4 c r }
      { gf8 gf gf4 gf r }
    >>
  >> |

  \break

  <<
    { af'4. <bf af>8 r2 }
    \\
    { <ef, af,>4. <ef f,>8 r2 }
  >> |
  <<
    { r8 <bf' af> <bf af>4 <bf af ff>8 <bf af ff> r <bf f>~ }
    \\
    { r8 <ef, af,> <ef f,>4 <df gf,>8 <df gf,> r <c g>~ }
  >> |
  <<
    { <bf' f>1 }
    \\
    { <c, g>1 }
  >> |
  <<
    { r8 \ottava #-1 d ef4 g8 bf ef4 \ottava #0 }
    \\
    { r8 d,, ef4 g8 bf ef4 }
  >> |

  \bar "|."
}

changes = \chords {
  \repeat unfold 2 {
    \repeat unfold 2 {
      f1:m7.5- |
      bf1:7 |
      ef1:maj7 |
      s1 |
    }

    a1:m7.5- |
    af1:m7 |
    g1:m7 |
    gf1:dim7 |

    f1:m7 |
    bf1:7 |
    ef1:maj7 |
    s1 |

  }

  \repeat unfold 2 {
    gf1:maj7 |
    s1 |
    ef1:maj7 |
    s1 |
  }

  a1:m7.5- |
  af1:m7 |
  g1:m7 |
  gf1:dim7 |

  f1:m7 |
  bf2:7 f2:m7 |
  ef1:maj7 |
  s1 |

 \repeat unfold 2 {
  \repeat unfold 2 {
    f1:m7.5- |
    bf1:7 |
    ef1:maj7 |
    s1 |
  }

  a1:m7.5- |
  af1:m7 |
  g1:m7 |
  gf1:dim7 |

  f1:m7 |
  bf1:7 |
  ef1:maj7 |
  s1 |
 }
}

\score {
  <<
    \changes
    \new Staff {
      \clef treble
      \key ef \major
      \time 4/4

      \mark \markup { \box \bold "A1" }
      \aFirst
      \mark \markup { \box \bold "A2" }
      \aSecond
      \mark \markup { \box \bold "B" }
      \bridge
      \mark \markup { \box \bold "A3" }
      \aThird
      \mark \markup { \box \bold "A4" }
      \aFourth
    }
  >>
}
