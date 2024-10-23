\version "2.25.19"
melody_verse = \relative c' \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  s1 * 7 |
  c2 r8 c4 c8~ |
  c1 |
  s1 * 2 |
  c2 r8 c4 c8~ |
  c2 c2 |
  c2 r8 c4 c8~ |
  c2 c2 |
  c2 r8 c4 c8~ |
  c2 c |
  c c |
  s1 |
  r8 c c4 r8 c4 c8~ |
}

melody_end = \relative c' \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  r8 c c4 r8 c4 c8~ |
  c1 |
}
