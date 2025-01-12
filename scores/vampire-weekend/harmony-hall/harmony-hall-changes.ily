\version "2.25.22"
changes_riff = \chords {
  | b1
  | s1
  | e1
  | s1
}

changes_verse = \chords {
  \changes_riff
}

changes_pre_chorus = \chords {
  | fs2 b
  | e1
}

changes_chorus = \chords {
  \repeat unfold 2 {
    | fs2 b
    | e1
  }

  | fs2 b
  | e2 cs:m
  | fs2 b
  | e1
}
