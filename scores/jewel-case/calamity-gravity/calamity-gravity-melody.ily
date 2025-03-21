\version "2.25.24"

drumIntro = {
  | R8 * 5 * 4
}

melodyIntro = \relative c'' {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    | c8 c4 c16 c c c
    | c8 c4 c16 c c c
    | c8 c4 c16 c c c
    | c8 c c c c
  }
}

melodyVerse = \relative c'' {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    | \parenthesize { c8. c c8 c }
    | s4.c8 c
    | s8 * 5
    | s4.c8 c

    | s8 * 5
    | s4.c8 c
    | s8 * 5
    | s4.c8 c
  }
}

melodyPreChorus = \relative c'' {
  \repeat unfold 8 {
    | s8 * 5
  }
}

melodyChorus = \relative c'' {
  \repeat unfold 16 {
    | s8 * 5
  }
}

calamityGravityMelody = {
  \drumIntro

  \repeat unfold 2 {
    \melodyIntro
    \melodyVerse

    \repeat volta 2 {
      \melodyVerse
    }

    \melodyPreChorus
  }

  \melodyChorus
  \melodyIntro

  \repeat volta 2 {
    \melodyVerse
  }

  \melodyPreChorus
  \melodyChorus
  \melodyIntro
}
