\version "2.25.15"
intro = \relative g' {
  | g8 b g' fs g, b g' fs
  | s1
  | g,,8 b g' fs g, b g' fs
  | s1

  | s1 * 2
}

verseOne = {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    \repeat volta 2 {
      | s1 * 5
      | c4 c c c
      | c1 ~

      \alternative {
        \volta 1 {
          | c1
        }

        \volta 2 {
          | c2 \repeatTie c4 c
        }
      }
    }
  }
}

verseTwo = {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

      | s1 * 5
      | c4 c c c
      | s1
      | s1

  }
}

chorus = \relative c'' {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    | c1 ~
    | c2 c4 c
    | c1 ~
    | c2 c4 c

    | c2 c
    | c2 c
    | s1 * 2
  }
}

bridge = \relative g {
  | g8 b g' fs a, c g' fs
  | b, d fs g
  | s1

  \new Voice \with {
    \consists "Pitch_squash_engraver" } {
      \improvisationOn

      | c4 c c c
      | c1 ~
      | c2 c4 c
    }

}

end = \relative g {
  | g8 b g' fs a, c g' fs
  | b, d fs g
  | s1
}

melody = {
  \intro
  \verseOne
  \chorus
  \verseTwo
  \bridge
  \chorus
  \end
}
