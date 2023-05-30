key_and_time = {
  \key g \major
  \time 4/4
}

intro = {
  | s1 * 6
}

verse = {
  | s1 * 9
}

chorus = {
  | s1 * 8
}

bridge = {
  | s1

  \time 2/4

  | s2

  \time 4/4

  | s1 * 3
}

coda = {
  | s1

  \time 2/4

  | s2

  \time 4/4

  | s1
}

structure = {
  \key_and_time
  \intro
  \verse
  \chorus
  \verse
  \bridge
  \intro
  \verse
  \coda

  \bar "|."
}
