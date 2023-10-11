\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"
\include "helpers/set-bars-per-line.ily"

\header {
  title = "Meet Me In The Atmosphere"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

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

  | f2
  | bf2
  | c2
  | c2
  | s2

  \repeat unfold 3 {
    \repeat volta 4 {
      \verseChords
    }
  }
  | f2
}

music = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \key f \major
  \time 2/4

  \improvisationOn

  \sectionLabel "Group Vocals"
  \repeat volta 4 {
    \fourTimes

    | f4 f8 \parenthesize f
    | bf4 bf8 \parenthesize bf
    | c4 c8 \parenthesize c
  }

  \sectionLabel "Verse"
  \repeat volta 4 {
    \fourTimes

    | s2 * 3
  }

  \sectionLabel "Instrumental"
  \repeat volta 4 {
    | s2 * 2

    \alternative {
      \volta 1,2,3 {
        | s2
      }

      \volta 4 {
        | s2
        | s2
      }
    }
  }

  \sectionLabel "Verse"
  \repeat volta 4 {
    \fourTimes

    | s2 * 3
  }

  \sectionLabel "Group Vocals"
  \repeat volta 4 {
    \fourTimes

    | s2 * 3
  }

  \sectionLabel "Instrumental/Group Vocals"
  \repeat volta 4 {
    \fourTimes

    | s2 * 3
  }

  | f2 ~
  | f2 ~
  | f2

  \bar "|."
}
\score {
  \layout {
    \context {
      \Score
      \consists #(set-bars-per-line '(6 5 6))
    }
  }

  <<
    \changes

    \new Staff \with {
      instrumentName = "Guitar"
      \numericTimeSignature
    } {
      \compressMMRests
      \music
    }
  >>
}
