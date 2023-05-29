one = \relative c'' {
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

two = \relative c'' {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    | c4. c
    | s2. * 3

    | c4. c
    | s2. * 2
    | c4. c
    | c4. c

    | s2.
    | c4. c

    | c4 c8 c4 c8
    | s2.
  }
}

melody = {
  \one
  \two

  | s2.

  \one
  \two

  | s2. * 2

  \one

  | c4. c
  | s2. * 3
}
