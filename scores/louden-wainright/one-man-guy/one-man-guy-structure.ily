verse = {
  \repeat unfold 4 {
    | s1

    \time 2/4
    | s2

    \time 4/4
    | s1
  }
}

verseTwo = {
  \verse
  | s1
}

chorus = {
  | s1 * 4
  | s1 * 4
}

structure = {
  \verse
  \verseTwo
  \chorus
  \verseTwo
  \chorus

  \bar "|."
}
