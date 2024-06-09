\version "2.25.16"
melody = \relative c' \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  c1 |
}
