\version "2.25.24"
key_and_time = {
  \key e \minor
  \time 4/4
}

base = {
  s1 * 4 |
}

structure_intro = {
  \base
  \bar "||"
}

structure_verse = {
  \repeat unfold 3 {
    \base
  }
  s1 * 3 |
  \codaMark \default
  s1 * 1 |
  s1 |
  \bar "||"
}

structure_end = {
  \repeat volta 2 {
    s1 * 3 |
  }
  s1 |
  \bar "|."
}
