\version "2.27.0"

removeFingerings = \layout {
  \context {
    \Voice
    \remove "Fingering_engraver"
    \remove "New_fingering_engraver"
  }
}
