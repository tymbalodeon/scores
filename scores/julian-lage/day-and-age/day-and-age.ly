\version "2.25.11"

\include "helpers/settings.ily"

\header {
  title = "Day and Age"
  composer = "Julian Lage"
}

melody = \relative c' {
  \parenthesize a4 a b8 d4. |
  fs1 |
  \parenthesize e4 e e8 fs4 e8 |
  r4 d2. |

  \break

  \parenthesize a4 a b8 d4. |
  fs1 |
  \parenthesize e4 e e8 fs4 e8 |
  r4 d2. |

  \break

  r4 <d' a fs> <d a fs>8 <b fs d> <a e cs> <fs b, a> |
  <e b g>4 <e b g>2. |
  r4 a  a8 fs e d |
  b1 |

  \break

  \parenthesize a4 a b8 d4. |
  fs2 e |
  d1 |
  R |

  \bar "|."
}

changes = \chords {
  d2 d/cs | g1:maj7/b | a:sus | d |
  d2 d/cs | g1:maj7/b | a:sus | g |
  d | g:6 | a:sus | g |
  d2 d/cs | g:maj7/b a:sus | d1 | s |
}

\score {
  <<
    \changes
    {
      \key d \major
      \time 2/2
      \melody
    }
  >>
}
