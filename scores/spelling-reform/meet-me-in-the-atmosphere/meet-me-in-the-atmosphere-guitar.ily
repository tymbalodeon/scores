\version "2.25.19"

fourTimes = \mark \markup \small \italic 4x

verseChords = \chordmode {
  | f2
  | bf2
  | c2
}

changes = \chords {
  \repeat unfold 2 {
    \repeat volta 4 {
      \verseChords
    }
  }

  \verseChords

  | \parenthesize c2
  | s2

  \repeat unfold 3 {
    \repeat volta 4 {
      \verseChords
    }
  }
  | f2
}

meetMeInTheAtmosphere = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \key f \major
  \time 2/4

  \improvisationOn

  \repeat volta 4 {
    \fourTimes

    | f4 ^\markup {
      \fret-diagram-terse "x;x;o;2;3;2;"
    } ^\markup \italic "[group vocals]" f8 \parenthesize f
    | bf4 ^\markup {
      \fret-diagram-terse "3;2;o;o;3;3;"
    } bf8 \parenthesize bf
    | c4 ^\markup {
      \fret-diagram-terse "x;o;3;3;3;o;"
    } c8 \parenthesize c
  }

  \repeat volta 4 {
    \fourTimes

    | s2 * 3 ^\markup \italic "[verse]"
  }

  \repeat volta 4 {
    \fourTimes

    | s2 * 3 ^\markup \italic "[instrumental]"
  }

  | s2 * 2

  \repeat volta 4 {
    \fourTimes

    | s2 * 3 ^\markup \italic "[verse]"
  }

  \repeat volta 4 {
    \fourTimes

    | s2 * 3 ^\markup \italic "[group vocals]"
  }

  \repeat volta 4 {
    \fourTimes

    | s2 * 3 ^\markup \italic "[instrumental/group vocals]"
  }

  | f2 ~
  | f2 ~
  | f2

  \bar "|."
}

