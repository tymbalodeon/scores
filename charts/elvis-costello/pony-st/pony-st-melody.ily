melody_verse = \relative c' \new Voice \with {
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
