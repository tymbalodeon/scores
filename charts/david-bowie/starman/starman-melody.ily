intro = {
  R1 * 4 |
}

verse = \relative c'' {
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
  R1 * 1 |
  r2 r4 g8 a |
}

chorus = \relative c' {
  f2 f' |
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

melody_verse = \new Voice \with {
  \consists "Pitch_squash_engraver"
} \relative c' {
  \improvisationOn
  \verse
}

melody_chorus = \new Voice \with {
  \consists "Pitch_squash_engraver"
} \relative c' {
  \improvisationOn
  \chorus
}

melody = {
  \intro
  \verse
  \chorus
}
