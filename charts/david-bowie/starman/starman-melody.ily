intro = {
  R1 * 4 |
}

verse = \relative c'' {
  r8 bf16 bf bf8 bf bf bf g g |
  bf4 g8 d'~( d bf4 a8~ |
  a) a8 a4 a a8 a |
  gs4 a8 c8~( c a4 g8~ |
  g) r8 r2. |
  R1 * 4 |
}

chorus = \relative c' {
  f2 f' |
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
