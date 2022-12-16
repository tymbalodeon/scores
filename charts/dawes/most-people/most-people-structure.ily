key_and_time = {
  \key d \major
  \time 4/4
}

structure_verse = {
  \key_and_time
  \repeat volta 2 {
    \repeat unfold 4 {
      s1 * 2 |
    }
  }
}

structure_chorus = {
  \key_and_time
  \repeat volta 2 {
    \partial 2
    \mark \markup \box \italic "4x"
    s2 |
    s1 |
    s2
  }
}

structure_end = {
  \key_and_time
  \repeat volta 2 {
    s1 * 2 |
  }
}
