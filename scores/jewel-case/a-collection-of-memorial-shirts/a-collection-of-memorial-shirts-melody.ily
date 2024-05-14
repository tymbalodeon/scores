\version "2.25.15"

melody = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn

  \repeat unfold 2 {
    \repeat unfold 2 {
      | s1  
    }

    \repeat volta 2 {
      | s1 * 2
    }

    \repeat unfold 2 {
      | c4 c c c
    }
  }

  | s1 * 6
  | s1 * 4

  \repeat unfold 2 {
   | s1  
  }

  \repeat volta 2 {
    | s1 * 2
  }

  \repeat unfold 2 {
    | c4 c c c
  }

  | s1 * 6
  | s1 * 4
  | s1 * 2
}
