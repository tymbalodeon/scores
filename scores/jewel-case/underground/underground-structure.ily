key_and_time = {
  \key c \major
  \time 6/8
}

one = {
  \repeat volta 2 {
    | s2. * 4
  }
}

two = {
  | s2. * 11

  \repeat volta 2 {
    | s2. * 2
  }
}

structure = {
  \key_and_time
  \one
  \two

  | s2.

  \one
  \two

  | s2. * 2

  \one

  | s2. * 4

  \bar "|."
}
