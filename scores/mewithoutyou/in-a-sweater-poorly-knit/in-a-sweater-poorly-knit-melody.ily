\version "2.25.17"
melody = \relative c' \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  c1 |
}
