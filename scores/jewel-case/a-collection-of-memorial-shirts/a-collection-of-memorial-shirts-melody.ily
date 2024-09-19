\version "2.25.19"

aCollectionOfMemorialShirtsMelody = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn

  \repeat unfold 2 {
    | c2 c
    | c2 c

    \repeat unfold 3 {
      | c2 c
      | c2 c
    }

    \repeat unfold 2 {
      | c4 c c c
    }
  }

  | s1
  | s1
  | c2 c
  | s1

  | s1 * 2
  | c2 c
  | c2 c

  \repeat volta 2 {
    \repeat unfold 4 {
     | c2 c
    }
  }

  | c2 c
  | c2 c

  \repeat unfold 3 {
    | c2 c
    | c2 c
  }

  \repeat unfold 2 {
    | c4 c c c
  }

  | s1
  | s1
  | c2 c
  | s1

  | s1 * 2
  | c2 c
  | c2 c

  \repeat volta 2 {
    \repeat unfold 4 {
     | c2 c
    }
  }

  | c2 c
  | c2 c
}
