verse_chorus = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  \repeat unfold 6 {
    s1 |
  }
  g2 e |
  a2~^\markup \italic "to Chorus"
  \codaMark \default
  \bar "||"
  \parenthesize a |
}

melody_chorus = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  a16 a a a~ a a8 g16~ |
  g4 g2.-> |
  d2
  a16 a a a~ a[ a8^\markup \italic "to End" \bar "||" \codaMark \default g16]~ |
  a2 |
}

melody_end = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  a16~ |
  a4 r \parenthesize a r16 fs8. |
  g4 r \parenthesize g r16 b8.  |
}
