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
  | s1 * 2
  \bar "||"
}

structure_chorus = {
  \key_and_time
  \repeat volta 2 {
    | s1 * 8
  }
}
