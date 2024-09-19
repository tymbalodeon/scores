\version "2.25.19"

intro = \relative g' \new CueVoice {
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
      | s1

      \alternative {
        \volta 1 {
          | s1
        }

        \volta 2 {
          | \parenthesize c2 \repeatTie c4 c
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

    | s1
    | \parenthesize c2 c4 c
    | s1
    | \parenthesize c2 c4 c

    | c2 c
    | c2 c
    | s1 * 2
  }
}

bridge = \relative g \new CueVoice {
  | g8 b g' fs a, c g' fs
  | b, d fs g
  | s1

  \new Voice \with {
    \consists "Pitch_squash_engraver" } {
      \improvisationOn

      | c4 c c c
      | s1
      | \parenthesize c2 c4 c
    }

}

end = \relative g {
  | g8 b g' fs a, c g' fs
  | b, d fs g
  | s1
}

theMindMoteMelody = {
  \intro
  \verseOne
  \chorus
  \verseTwo
  \bridge
  \chorus
  \end
}
