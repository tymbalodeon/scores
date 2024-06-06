\version "2.25.15"

melodyVerse = \relative c'' {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    | s1 s2
    | \parenthesize c2. c

    \repeat unfold 7 {
      | s1 s2
    }

    | \parenthesize c2. c4. c

    \repeat unfold 3 {
      | s1 s2
    }

    | \parenthesize c2. c4. c

    | s1 s2
    | \parenthesize c2. c
    | s1 s2
    | s1 s2
  }
}


melodyVerse = \relative c'' {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    | s1 s2
    | \parenthesize c2. c

    \repeat unfold 7 {
      | s1 s2
    }

    | \parenthesize c2. c4. c

    \repeat unfold 3 {
      | s1 s2
    }

    | \parenthesize c2. c4. c

    | s1 s2
    | \parenthesize c2. c
    | s1 s2
    | s1 s2
  }
}

melodyChorus = \relative c'' {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    \repeat unfold 19 {
      | s1 s2
    }
    
    | \parenthesize c2. c4. c

    \repeat unfold 3 {
      | s1 s2
    }

    | \parenthesize c2. c4. c

    | s1 s2
    | \parenthesize c2. c
    | s1 s2
    | s1 s2
  }
}
noGreaterLieMelody = {
  \repeat unfold 12 {
    | s1 s2
  }

  \melodyVerse
  \melodyChorus

  \melodyVerse
  \melodyChorus
}
