\version "2.25.15"
melody_intro = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  s2. |
  s1 |
  f4 g af |
}

melody_verse = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  f4 g af |
  s1 |
  f4 af bf2 |
  ef df |
}

melody_chorus = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  af2 bf |
  c f |
  \repeat unfold 3 {
    af2 bf |
  }
}
