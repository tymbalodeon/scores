intro = {
  R1 * 4 |
}

verse = \relative c'' {
  r8 bf16 bf bf8 bf bf bf g g |
  R1 * 8
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
