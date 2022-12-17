melody_verse = \new Voice \with {
  \consists "Pitch_squash_engraver"
} \relative c' {
  \improvisationOn
  e16 e8 e16 e8 e16 e~ e e e8 e e |
}

melody_chorus = \new Voice \with {
  \consists "Pitch_squash_engraver"
} \relative c' {
  \improvisationOn
  a4. e8~ e2 |
  b4. e8~ e2 |
  a4. e8~ e2 |
  s1 |
}
