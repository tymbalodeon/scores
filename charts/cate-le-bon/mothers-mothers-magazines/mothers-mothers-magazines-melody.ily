melody = \relative c' \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  \repeat volta 2 {
    \repeat unfold 2 {
      c2. c4 |
    }
  }
  \repeat volta 2 {
    c2 c4 |
    c1 |
  }
  c4 c2 |
  c1 |
  c4 c c c c |
  c8 c~ c2. |
  c2 c |
  \repeat unfold 2 {
    \repeat volta 2 {
      \repeat unfold 2 {
        c2. c4 |
      }
    }
  }
}
