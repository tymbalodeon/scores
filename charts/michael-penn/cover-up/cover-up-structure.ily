base = {
  \time 3/4
  s2. |

  \time 4/4
  s1 |
}

intro = {
  \repeat unfold 2 {
    \base
  }
}

verse = {
  \segnoMark \default
  \base

  s1 * 2 |
}

chorus = {
  s1 * 5 |

  \time 3/4
  s2. |

  \time 4/4
  s2. s4_\markup { \italic "D.S." } |

  \bar "||"
}

structure = {
  \key ef \major

  \intro
  \verse
  \chorus
}
