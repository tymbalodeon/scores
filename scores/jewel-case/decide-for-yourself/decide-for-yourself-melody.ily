\version "2.25.16"

melodyChorus = \relative c'' {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    | s1

    \time 5/8

    | c8 c c c c

    \time 4/4

    | s1
    | c4. c c4
  }
}

melodyPostChorus = \relative c'' {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    | s1
    | s1
    | s1
    | c4. c c4
  }
}

decideForYourselfMelody = {
  | s1 * 7

    \repeat unfold 4 {
    | s1 * 4
    \melodyChorus
    \melodyPostChorus
  }

  \melodyPostChorus
}
