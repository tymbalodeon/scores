\version "2.25.20"

melodyIntro = \relative c'' {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    | c8. c c c c4
    | \parenthesize c4 c -> c c
    | c2 c8. -> c -> c8 -> ~
    | c1
  }
}

melodyVerse = \relative c'' {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    \repeat unfold 3 {
      | c2 c
    }

    | s1
  }
}

melodyMiddle = {
  | c2 c
  | s1
  | c2 c
  | s1
  | s1

  | s1 * 4

  | c2 c
  | c2 c
  | s1
  | s1

}

peaceInTimeMelody = {
  \repeat unfold 2 {
    \melodyIntro
    \melodyVerse
  }

  \melodyMiddle
  \melodyIntro
  \melodyVerse
}
