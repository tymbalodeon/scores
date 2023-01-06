verse = \relative c'' {
  c1 |
}

chorus = \relative c'' {
  c1 |
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
  \verse
  \chorus
}
