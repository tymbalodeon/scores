intro = {
  R1 * 4 |
}

verse = \relative c'' {
  r8 bf16 bf bf8 bf bf bf g g |
  bf4 g8 d'~ ( d bf4 a8~ |
  a ) a8 a4 a a8 a |
  gs4 a8 c8~( c a4 g8~ |
  g) g g g g g g a |
  r8 bf4 c8 d c16 c c c a8 |
  R1 |
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
