\version "2.25.15"

key_and_time = {
  \key g \major
  \time 4/4
}

intro = {
  | s1 * 6
}

verseOne = {
  | s1 * 9
}

verseTwo = {
  | s1 * 8
}

chorus = {
  | s1 * 8
}

bridge = {
  | s1

  \time 2/4

  | s2

  \time 4/4

  | s1 * 4
}

end = {
  | s1

  \time 2/4

  | s2

  \time 4/4

  | s1
}

theMindMoteStructure = {
  \numericTimeSignature
  \key_and_time
  \intro
  \verseOne
  \chorus
  \verseTwo
  \bridge
  \chorus
  \end

  \bar "|."
}
