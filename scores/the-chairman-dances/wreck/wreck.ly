\version "2.25.5"

\include "settings.ily"

\header {
  title = "Wreck"
  composer = "The Chairman Dances (Eric Krewson)"
  arranger = "Ben Rosen, bass"
}

verse_base = \relative a, {
  \repeat volta 2 {
    | a4 r r2
    | r2 r4 r8 e
    | c'4 r r r8 e,
    | g4 r r r8 e
  }
}

chorus_base = \relative a, {
  | r8 a4 a8 ~ a a4 a8 ~
  | a8 a4 a8 ~ a e g e
  | r8 a4 a8 ~ a a4 a8 ~
  | a8 a4 a8 ~ a e g e

  | r8 c'4 c8 ~ c c4 c8 ~
  | c8 g4 g8 ~ g e g e
  | r8 a4 a8 ~ a a4 a8
}

chorus_one = \relative a, {
  \chorus_base ~

  | a8 e e e r e e e
}

chorus_two = \relative e {
  \chorus_one
  \chorus_base

  \repeat unfold 8 { e8 }
}

music = \relative a, {
  \clef "bass"
  \tempo 4 = 100

  | r2 r4 r8 e

  | a1
  | r2 r4 r8 e
  | a1
  | r2 r4 r8 e

  \verse_base

  | a4 r r2
  | r2 r4 a8 b
  | c4 r8 e,4 f8 fs4
  | g4 r r r8 e'

  | a,4 r r2
  | r2 r4 r8 e
  | c'4 r r r8 e,
  | g4 r r2

  \chorus_one

  \verse_base

  | a4 r r2
  | r2 r4 r8 e
  | c'4 r8 e4 f8 fs4
  | g4 r r2

  \chorus_two

  | R1
  | r2 r4 r8 e,

  \repeat volta 2 {
    | \repeat unfold 8 { a8 }
    | \repeat unfold 4 { a8 } a a a b
    | \repeat unfold 4 { c8 } c c c a

    \alternative {
      \volta 1 {
        | \repeat unfold 4 { g8 } g g g e
      }

      \volta 2 {
        | g4 r r2
      }
    }
  }

  \chorus_two

  \repeat percent 4 {
    | \tuplet 5/4 {
        \repeat unfold 5 { a4 }
      }
  }

  | \tuplet 5/4 {
      \repeat unfold 5 { c4 }
    }
  | \tuplet 5/4 { c4 g g g g }

  | \tuplet 5/4 {
      \repeat unfold 5 { a4 }
    }
  | \tuplet 5/4 { a4 e e e e }

  \repeat percent 4 {
    | \tuplet 5/4 {
        \repeat unfold 5 { <a e'>4 }
      }
  }

  \repeat percent 2 {
    | \tuplet 5/4 {
        \repeat unfold 5 { <c g'>4 }
      }
  }

  | a4 r8 a a4 r8 a
  | a1

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \compressMMRests
    \music
  }
}
