\version "2.25.19"
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
    a2 f4 |
    s1 |
  }
  bf4 af2 |
  s1 |
  a4 f a f a |
  g8 g~ g2. |
  g2 g |
}

melody_solo = \melody_verse
