\version "2.25.24"
key_and_time = {
  \key b \major
  \time 4/4
}

structure_riff = {
  \key_and_time
  \repeat volta 2 {
    | s1 * 4
  }
}

structure_pre_chorus = {
  \key_and_time
  \repeat volta 4 {
    \mark \markup \circle \italic "4x"
    | s1 * 2
  }
}

structure_chorus = {
  \key_and_time
  \repeat volta 2 {
    | s1 * 8
  }
}
