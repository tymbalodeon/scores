\version "2.25.24"
key_signature = {
  \key ef \major
}

base = {
  \time 3/4
  s2. |

  \time 4/4
  s1 |
}

structure_intro = {
  \repeat unfold 2 {
    \base
  }
  \bar "||"
}

structure_verse = {
  \base
  \parenthesize \time 4/4
  s1 * 2 |
  \bar "||"
}

structure_chorus = {
  s1 * 5 |
  \time 3/4
  s2. |
  \time 4/4
  s1 |
  \bar "||"
}
