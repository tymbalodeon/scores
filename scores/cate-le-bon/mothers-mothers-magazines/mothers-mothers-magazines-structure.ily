\version "2.25.17"
key_and_time = {
  \key f \major
  \time 4/4
}

verse_base = {
  s1 * 2 |
}

structure_verse = {
  \verse_base
  \bar "||"
}

structure_chorus = {
  \repeat volta 2 {
  \time 3/4
  s2. |
  \time 4/4
  s1 |
  }
  \time 3/4
  s2. |
  \time 4/4
  s1 |
  \time 5/4
  \repeat unfold 2 {
    s2
  }
  s4 |
  \time 4/4
  s1 |
  \bar "||"
  \segnoMark \default
  s1 |
  \bar "||"
}

structure_solo = {
  \verse_base
  \bar "||"
}
