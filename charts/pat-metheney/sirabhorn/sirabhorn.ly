\version "2.23.11"
\include "../../../settings.ily"
\include "../../../style.ily"

\header {
  title = "Sirabhorn"
  composer = "Pat Metheney"
}

melody = \relative c'' {
  \repeat volta 2 {
    e4 d d8 e |
    ef4 c8 df~ df4 |
    c af8 bf~ bf4 |
    a! fs8 g~ g4 |

    r8 cs ds4 cs8 ds |
    cs4 as8 b~ b4 |
    as fs8 gs~ gs4 |
    g! e8 f!~ f4 |

    \repeat unfold 2 {
      r8 af bf4 af8 bf |
      bf4 g8 af~ af4 |
    }

    gs4. b |
    cs e |
    fs gs |
    e cs |
  }

  cs4 d e |
  d cs b |
  b a8 a'~ a4~ |
  a2. |

  \repeat volta 2 {
    cs4. b~ |
    b2. |
    gs4. fs~ |
    fs2. |
  }
}

changes = \chords {
  \repeat volta 2 {
    c2. | bf:m | gf | e:m |
    b | gs:m | e | d:m |
    \repeat unfold 2 { gf | f:m | }
    d | s2. * 3 |
  }
  a2. | g | gf4.:m f | s2. |
  \repeat volta 2 {
    e2. | s2. * 3 |
  }
}

\score {
  \layout {
    \context {
      \Score
      \consists #(bars-per-line-engraver '(4))
    }
  }
  <<
    \changes
    {
      \time 3/4
      \melody
    }
  >>
}
