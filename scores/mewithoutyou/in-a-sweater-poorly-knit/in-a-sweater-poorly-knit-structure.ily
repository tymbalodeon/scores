\version "2.25.20"
key_and_time = {
  \key c \major
}

base = {
  s1 * 4 |
}

structure_verse = {
  \key_and_time
  \repeat volta 2 {
    \base
  }
}

structure_chorus = {
  \key_and_time
  \repeat unfold 2 {
    \base
  }
  \bar "||"
}
