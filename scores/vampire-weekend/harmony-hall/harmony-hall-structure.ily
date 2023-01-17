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
    | s1 * 2 ^\markup \box \italic "4x"
  }
}

structure_chorus = {
  \key_and_time
  \repeat volta 2 {
    | s1 * 8
  }
}
