\version "2.25.20"
intro = {
  s2. * 4 |
}

verse = {
  \repeat volta 2 {
    s2. * 14 |
  }
}

structure = {
  \key e \major
  \time 6/8

  \intro

  \segnoMark \default
  \verse
  \repeat volta 5 {
    s4. s4 s8^\markup { "Fine" } |
  }
  s2. |

  \key c \major
  \mark "Solo"
  \verse
  \repeat volta 5 {
    s2. |
  }
  s4. s_\markup { \italic "D.S. al Fine" } |

  \bar "||"
}
