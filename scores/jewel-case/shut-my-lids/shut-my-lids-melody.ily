\version "2.25.19"

melodyIntro = \relative c'' {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    | c8 c4 c16 c c c
    | c8 c4 c16 c c c
    | c8 c4 c16 c c c
    | c8 c c c c
  }
}

shutMyLidsMelody = {
}
