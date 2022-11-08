melody_verse = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  \repeat unfold 2 {
    c2. c4 |
  }
}

melody_chorus = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  \repeat volta 2 {
    c2 c4 |
    c1 |
  }
  c4 c2 |
  c1 |
  c4 c c c c |
  c8 c~ c2. |
  c2 c |
}

melody_solo = \melody_verse
