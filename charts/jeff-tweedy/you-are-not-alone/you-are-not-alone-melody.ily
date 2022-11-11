melody_intro = \relative c' \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  c2. c4 |
  s1 |
  \repeat unfold 2 {
    c2. c4 |
  }
}

melody_verse = \relative c' \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  \repeat volta 2 {
    c2. c4 |
    s1 |
    \repeat unfold 2 {
      c2. c4 |
    }
    \repeat unfold 3 {
      s1 |
    }
    c2 c |
    \repeat unfold 4 {
      s1 |
    }
    c2 c4 c |
    s1 * 2 |
    \repeat unfold 2 {
      c2. c4 |
    }
  }
}
