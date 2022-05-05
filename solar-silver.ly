\version "2.20.0"
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
  title = "Solar"
  subtitle = "Piano Solo by Horace Silver"
  subsubtitle = "from the Album \"Walkin' \""
  composer = "Miles Davis"
}

chorusOne = \relative c' {
  \mark \markup { \box \bold "1" }

  <a a'>1 |
  <b b'> |
  <d d'> |
  r2 ef'8 df c bf |

  \tuplet 3/2 { a bf b } \tuplet 3/2 { c b bf } a f d c |
  g'4 r8 f g a r bf |
  af c, ef g f4 r |
  \tuplet 3/2 { ef8 f ef } c cs d4 \tuplet 3/2 { g,8 bf d } |

  f4. ef8 f ef r af8 |
  r af4 gf8 af gf r4 |
  r8 ef4 df8 ef df r4 |
  bf'4 bf bf8 af r4 |

  \bar "||"

  \mark \markup { \box \bold "2" }
  
  r r8 b d4 g, |
  b ef, g b,8 ef |
  g,4 b ef, r |
  r2 \tuplet 3/2 { df''8 ef df } c bf |

  \tuplet 3/2 { a bf b } \tuplet 3/2 { c b bf } a f d c |
  g' e f g gs a d df |
  c4 bf8 af r c, ef g |
  gf4 r f8 d b af |

  g bf d4 f8 ef r4 |
  gf,8 bf16 df f8 e~ e c16 a gf4 |
  f8 af c4 ef8 df r4 |
  r8 b ef4 bf' af |
  
  b1 |

  \bar "|."
}
changes = \chords {
  \repeat unfold 2 {
    \break

    c1:m |
    s |
    g:m7.5- |
    c:7 |

    \break

    f:maj |
    s |
    f:m7 |
    bf:7 |

    \break

    ef:maj |
    ef2:m7 af:7 |
    df1:maj |
    d2:m7.5- g:7 |
  }
}

\score {
  <<
    \changes
    \new Staff {
      \clef treble
      \key c \minor
      \time 4/4

      % \mark \markup { \box \bold "1" }
      \chorusOne
    }
  >>
}
