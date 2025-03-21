\version "2.25.24"

intro = \relative c'' {
  R1 * 4 |

  r8 f d bf~ bf4 r |
  R1 |
  r8 e c a~ a4 r |
  R1 |
}

verse_one = \relative c'' {
  r8 bf16 bf bf8 bf bf bf g g |
  bf4 g8 d'~( d bf4 a8~ |
  a) a8 a4 a a8 a |
  gs4 a8 c8~( c a4 g8~ |
  g) g g g g g g a |
  r8 bf4 c8 d c16 c c c a8 |
  R1 |

  r4 bf8 bf bf bf4 bf8 |
  a4 g8 d'~( d bf4 a8~ |
  a) a8 a a16 a a8 a a a |
  gs4 a8 c8~( c a4 g8~ |
  g) g g c, g' c, g' a |
  bf4 c8 d4 c8 c16( g a8) |
  R1 |
  r2 r4 g8 a |
}

chorus_base = \relative c'' {
  e8 d16 c~ c8 d c4 r8 d |
  e8 d c16 d8. c16 d8. r8 d16 d |
  e8 d c16 d8. c8 r g f |

  f2 f' |
  e8 d16 c~ c8 d c4 r8 d |
  e8 d c d c16 d8. c8 d16 e~ |
  e8 d e f8 g g a16( g8) f16~ |

  f8 r f g16 f~ f8 g f g8 |
  r4 c,8 d16 c~ c8 d c d8 |
  r8 g,16 g~ g8 g c8 d a16( g) f8 |
}

chorus = \relative c' {
  f2 f' |
  \chorus_base
}

guitar_solo_base = \relative c'' {
    d4 r8 d~ d c4 bf8 |
    a4 r8 a~ a bf4 c8 |
    e4 r8 e~ e d4 c8 |
    a4 r8 a~ a bf4 c8 |
}

guitar_solo = \relative c'' {
    \guitar_solo_base

    d4 r8 d~ d c4 bf8 |
    a4 r8 a~ a bf4 c8 |
    e4 r8 e~ e d c a |
}

instrumental = \new CueVoice {
    s1 * 34 |
    \guitar_solo
    s1 * 37 |
    \guitar_solo_base
}

verse_two = \relative c'' {
  r8 bf8 bf bf bf bf bf bf16 bf |
  bf8 g4 d'8~( d bf4 a8~ |
  a) a a a a4 a8 a |
  gs4 a8 c8~( c a4 g8~ |
  g) g g g g g g a |
  bf8 bf bf c r d c c  |
  R1 |

  r8 bf8 bf bf bf bf bf bf |
  a4 g8 d'~( d bf4 a8~ |
  a) a a a a a a a |
  gs4 a8 c8~( c a4 g8~ |
  g) g g g g g g a |
  bf8 bf c d r c c16( g a8) |
  R1 |
  r2 r4 g8 a |
}

final_chorus = \relative c' {
  r4 f f'2 |
  \chorus_base
}

la = \relative c'' {
  \guitar_solo_base
}

melody = {
  \intro
  \verse_one
  \chorus
  s1 * 7 |
  \verse_two
  \chorus
  \final_chorus
  s1 * 4 |
  \la
}
