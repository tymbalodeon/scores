\version "2.25.15"

melody = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn

  \repeat unfold 2 {
    \repeat unfold 2 {
      | s1 * 2
    }

    \repeat volta 2 {
      | s1 * 4
    }

    \repeat unfold 2 {
      | c2 c 
      | c c
    }
  }

  | s1 * 12
  | s1 * 8

  \repeat unfold 2 {
   | s1 * 2
  }

  \repeat volta 2 {
    | s1 * 4
  }

  \repeat unfold 2 {
    | c2 c 
    | c c
  }

  | s1 * 12
  | s1 * 8
  | s1 * 4
}
