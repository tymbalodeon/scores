melody_intro = \new Voice \with {
  \consists "Pitch_squash_engraver"
} \relative c' {
  \improvisationOn

  | s1 * 4
}

melody_verse = \new Voice \with {
  \consists "Pitch_squash_engraver"
} \relative c' {
  \improvisationOn

  | s1 * 10
}

melody_chorus_one = \new Voice \with {
  \consists "Pitch_squash_engraver"
} \relative c' {
  \improvisationOn

  | s1 * 2
  | c2 c2
  | c2 c2
  | s1 * 4
}

melody_chorus_two = \new Voice \with {
  \consists "Pitch_squash_engraver"
} \relative c' {
  \improvisationOn

  | s1 * 2
  | c2 c2
  | c2 c2
  | r4 c4 r2

  | R1
}

melody = {
  \melody_intro
  \melody_verse
  \melody_chorus_one
  \melody_verse
  \melody_chorus_two
}
