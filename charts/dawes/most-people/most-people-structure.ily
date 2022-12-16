key_and_time = {
  \key d \major
  \time 4/4
}

base = {
  s1 * 2 |
}

verse = {
  \repeat unfold 4 {
    \base
  }
}

chorus = {
  \base
}

structure_verse = {
  \key_and_time
  \verse
}

structure_chorus = {
  \key_and_time
  \chorus
}

structure = {
  \key_and_time
  \verse
  \chorus
}
