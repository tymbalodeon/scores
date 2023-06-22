\version "2.25.5"

\include "helpers/settings.ily"

\header {
  title = "Long Ago and Far Away"
  composer = "Jerome Kern"
}

melodyA = \relative c' {
  \mark \markup { \bold \box "A" }
  
  f2. f4 |
  f a e4. d8 |
  e2. e4 |
  e f d bf |

  \break

  d2. c4 |
  d2. c4 |
  d e f fs |
  a2 g |

  \break
}

melody = \relative c' {
  \melodyA

  \mark \markup { \bold \box "B" }

  af'2. af4 |
  af c g4. f8 |
  g2. g4 |
  g b f e |

  \break

  g2. e4 |
  a2. bf4 |
  % c1~ |
  % c2. r4 |%}
  c1 |
  ef4 df8 c~ c2 |

  \break

  \melodyA

  \mark \markup { \bold \box "C" }
  
  c2. c4 |
  c ef bf a |
  d1~ |
  d4 bf a g |

  \break
  
  f2. f4 |
  f a e g |
  % f1 |
  % R1 |
}

aRight = \relative c' {
  <a g>2 <f a c> |
  <bf d> s |
  g4 a bf cf |
  bf2 bf |

  <g a>2. s4 |
  bf2. bf4 |
  b c bf bf |
  <bf d f>2 <bf e> |

  << { <ef c>1 } \\ { bf2 af} >> |
  <df f> s |
  <bf ef> <g c ef> |
  <a c> <a c>4 <af b > |

  r <d b af> <d c a g>2 |
  <c e>2 <f ef> |
  <d f g>1 |
  af'1 |
}

bRight = \relative c' {
  <c g>2 <c a f> |
  d df4 c |
  <c g>2 cf |
  bf af |

  g gs |
  g fs |
  b c4 b |
  <bf d>2 <bf e> |

  <ef g>1 |
  <d g>2 ef |
  << { a1 } \\ { fs2 g } >> |
  f df |

  c cf |
  bf bf |
  <gf af df f>1~ |
  \tuplet 3/2 { <gf af df f>2 <g a c e> <gf af df f> } |

  <b d g>1~ |
  <b d g>2 r |
}

aLeft = \relative c, {
  <f c'>2 <d a'> |
  <g f'> << { f'4 e } \\ { <c bf'>2 } >> |
  <f, c'>2 <a g'>4 <af gf'> |
  <g f'>2 << { f'4 e } \\ { c2 } >> |

  << { e4 c d ef } \\ { f,2. fs4 } >> |
  << { f' e d } \\ { g,2. } >> <bf af'>4 |
  <a e' g>2 <ef' gf af>4 <af, gf'> |
  <g f'>2 <c e> |

  << { ef1 } \\ { af,2 f } >> |
  <bf af'> << { af'4 g } \\ { <ef df'>2 } >> |
  <c af'> af |
  <g f'> g' |

  r4 f << e2 \\ { r4 g, } >> |
  <a g'>2 <df cf'> |
  <c bf'> c,~ |
  <c e' bf' ef>1 |
}

bLeft = \relative c, {
  <f d'>2 e'4 d |
  <c bf'>2 <b a'>4 <bf g'> |
  <a f'>2 <af gf'> |
  <g f'> <gf ff'> |

  << { c4 cs } \\ { f,2 } >> <e d'> |
  <ef bf'> <d a'> |
  <g f'> <a g'>4 <af gf'> |
  <g f'>2 <c e> |

  <c bf'> <bf af'> |
  <a g'> <d fs c'> |
  << { a' g } \\ { bf,1 } >> |
  <g' df'>2 <ef, bf' f'> |

  <a f'> <af f'> |
  <g f'> <c, e'> |
  gf''1~ |
  \tuplet 3/2 { gf2 f gf } |

  <c, f a>1~ |
  <c f a>2 r2 |
}

changes = \chords {
  f2 d:m7 |
  g:m7 c:7 |
  f1:maj |
  g2:m7 c:7 |

  f1 |
  g2:m7 c:7 |
  f1 |
  g2:m7 c:7 |

  af f:m7 |
  bf:m7 ef:7 |
  af1:maj |
  g:7

  c |
  a:m7 |
  g:m7 |
  c:7 |

  f2 d:m7 |
  g:m7 c:7 |
  f1:maj |
  g2:m7 c:7 |

  f1 |
  g2:m7 c:7 |
  f1 |
  g2:m7 c:7 |
  
  c1:m7 |
  f:7sus4 |
  bf |
  bf2:m7 ef:7.11+ |

  f/a a:dim7 |
  g:m7 c:7 |
  f1 |
  s1 |
}

\score {
  <<
    \changes
    \new GrandStaff <<
      \new Staff {
      \clef treble
      \key f \major
      \time 4/4

      <<
        \new Voice { \voiceOne \melody }
        \\
        {
          \aRight
          \bRight
          \bar "|."
        }
      >>
    }

      \new Staff {
        \clef bass
        \key f \major
        \time 4/4

        \aLeft
        \bLeft
      }
    >>
  >>
}
