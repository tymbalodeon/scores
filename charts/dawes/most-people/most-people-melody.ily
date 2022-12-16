verse_chorus = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  \repeat unfold 6 {
    s1 |
  }
  g2 e |
  a2~
  \codaMark \default
  \bar "||"
  \parenthesize a^\markup \italic "to Chorus" |
}

melody_chorus = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  a16 a a a~ a a8 g16~ |
  g4 g2.-> |
  d2
}
