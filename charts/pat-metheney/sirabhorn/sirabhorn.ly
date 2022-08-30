\version "2.23.11"
\include "../../../settings.ily"
\include "../../../style.ily"

\header {
  title = "Sirabhorn"
  composer = "Pat Metheney"
}

melody = \relative c'' {
  \repeat volta 2 {
    e2~ e8 e |
    ef4. df |
    c bf |
    a g |

    ds'2~ ds8 ds  |
    cs4. b
    as gs |
    g! f |

    \repeat unfold 2 {
      bf2~ bf8 bf |
      bf4. af |
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
    c2. | bf:m11 | gf:11+ | e:m11 |
    b | gs:m11 | e:11+ | d:m11 |
    \repeat unfold 2 { gf | f:m11 | }
    e:maj6/d | s2. * 3 |
  }
  a2. | g:maj11+ | gf4.:m11 f:6 | s2. |
  \repeat volta 2 {
    \repeat unfold 2 { e4.:6 e:sus | s2. | }
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
