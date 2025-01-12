\version "2.25.22"

melodyIntro = {
  | s2. * 2
}

melodyOne = \relative c'' {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    | c4. c
    | c4. c
    | c4. c
    | s2.
  }
}

melodyTwo = \relative c'' {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    | c4. c
    | s2. * 3
  }
}

melodyThree = \relative c'' {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    | c4. c
    | s2. * 2
    | c4. c
    | c4. c

    | s2.
    | c4. c

  }
}

melodyPreChorusOne = \relative c'' {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    | c4 c8 c4 c8
    | s2. * 2
  }
}

melodyPreChorusTwo = \relative c'' '{
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    | c4 c8 c4 c8
    | s2.
    | r8 c c c4 c8
    | s2. * 3
  }
}

melody = {
  \melodyIntro
  \melodyOne

  \melodyOne
  \melodyTwo
  \melodyThree
  \melodyPreChorusOne
  \melodyOne

  \melodyOne
  \melodyTwo
  \melodyThree
  \melodyPreChorusTwo
  \melodyOne

  \melodyTwo
  \melodyOne
}
