\version "2.25.22"

key_and_time = {
  \key c \major
  \time 4/4
}

riff = {
  | s1 * 2
}

verse = {
  | s1 * 4
}

structure = {
  \key_and_time

  \riff
  \verse
}
