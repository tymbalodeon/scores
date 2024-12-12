\version "2.25.21"
verse = \relative c'' {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    | s1
    | c4 c
    | s1

    | s1
    | s2
    | s1

    | c2 c
    | s2
    | s1

    | s1
    | s2
    | s1
  }
}

verseTwo = {
 \verse
 | s1
}

chorus = \relative c'' {
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \improvisationOn

    \repeat volta 2 {
      | e2 a
      | e2 a

      \alternative {
        \volta 1 {
          | e2 a
          | e2 a
        }

        \volta 2 {
          | s1
          | s1
        }
      }
    }

    | e2 a
    | s1
  }
}

melody = {
  \verse
  \verseTwo
  \chorus
  \verseTwo
  \chorus
}
