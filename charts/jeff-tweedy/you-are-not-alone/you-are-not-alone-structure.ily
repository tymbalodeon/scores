key_and_time = {
  \key e \minor
  \time 4/4
}

base = {
  s1 * 4 |
}

structure_intro = {
  \mark \markup \box "Intro"
  \base
  \bar "||"
}

structure_verse = {
  \mark \markup \box "Verse"
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
  \mark \markup \box "End"
  \repeat volta 2 {
    s1 * 3 |
  }
  s1 |
  \bar "|."
}
