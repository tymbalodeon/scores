\version "2.25.17"

removeFingerings = \layout {
  \context {
    \Voice
    \remove "Fingering_engraver"
    \remove "New_fingering_engraver"
  }
}
