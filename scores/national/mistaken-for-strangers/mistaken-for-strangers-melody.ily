\version "2.25.24"
intro = {
  s1 * 3 |
  r2 r8 f f f |
}

verse = {
  f f4 f8~ f f f f~ |
  f f f f~ f f f g~ |
  g f4 f8 r f f f~ |
  f f4. f8 f e f~ |

  f f e f~ f f e f~ |
  f f e f~ f f e f~ |
  f4 r8 f f f e f~ |
  f f4 f8~ f2 |

  g8 f4 g8~ g f4 g8~ |
  g f4. r2 |
  g8 f4 g8~ g f4 g8~ |
  g f4. r8 a a a |
}

chorus = {
  a a a a~ a a a a |
  a4 a r4 a8 a |
  a g g g~ g g g a |
  a g a a~ a a a a16 g~ |

  g8 g4 g8~ g4 f8 f |
  g4 g8 g~ g4 g8 g~ |
  g4 g8 g~ g a g g~ |
  g f4. r4 f8 f |

  d d d d a'4 a8 a~ |
  a4 g8 g f4 f8 d~ |
  d4 d8 a'~ a4. a8 |
  a g g f f4 r8 d |

  d d d d a' a a a16 g~ |
  g8 g4 g8~ g f f f |
  a4 a a8 a a a~ |
  a a a a~ a4 r |
}

melody = \relative c' {
  \intro
  \verse
  \chorus
}
