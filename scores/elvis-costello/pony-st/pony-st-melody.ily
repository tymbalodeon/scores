\version "2.25.22"
melody_intro = \relative c' \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  s1 * 3 |
  g2 c |
  d c |
  s1 |
  a2 d |
  s1 |
  d2 c |
  s1 |
}

melody_verse = \relative c' \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  d2 r8 a4 d8~ |
  d2 r8 g4 e8~ |
  e1 |

  d4. a8~ a4 d~ |
  d8 d4. g4 g |
  e1 |
  s |

  d2 r8 a4 d8~ |
  d2 r8 g4 e8~ |
  e1 |
}

melody_pre_chorus = \relative c' \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  s1 * 8
  d2 g |
}

melody_chorus = \relative c' \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  c2 r8 g4. |
  c2 g |
  s1 * 2 |
  c2 r8 g4. |
  c2 g |
  s1
  d2 c |
  s1 * 3 |
  c4. g8 g2 |
}
