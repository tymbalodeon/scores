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
  s2 |
  s1 |
  s2
}

structure_verse = {
  \key_and_time
  \verse
}

structure_chorus = {
  \key_and_time
  \partial 2
  \mark \markup \box \italic "4x"
  \chorus
}

structure = {
  \key_and_time
  \verse
  \chorus
}
