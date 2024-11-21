\version "2.25.20"

melodyVerse = \relative c'' {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    \repeat unfold 4 {
      | c4. c
    }
  }
}

melodyPreChorus = \relative c'' {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    | s2. * 3
    | c4. c
  }
}

littleToNothingMelody = {
  | s2. * 4

  \melodyVerse
  \melodyPreChorus

  | s2.* 4

  \melodyPreChorus
  \melodyVerse
  \melodyPreChorus

  | s2.* 4

  \melodyPreChorus
}
