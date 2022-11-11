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
  \mark \markup \box "Intro"
  \repeat unfold 2 {
    \base
  }
  \bar "||"
}

structure_verse = {
  \mark \markup \box "Verse"
  \base
  s1 * 2 |
  \bar "||"
}

structure_chorus = {
  \mark \markup \box "Chorus"
  s1 * 5 |
  \time 3/4
  s2. |
  \time 4/4
  s1 |
  \bar "||"
}
