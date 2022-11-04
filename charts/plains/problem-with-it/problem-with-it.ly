\version "2.23.80"

\include "settings.ily"
\include "style.ily"
\include "problem-with-it-chords.ily"
\include "problem-with-it-structure.ily"

\header {
  title = "Problem With It"
  composer = "Plains"
}

\paper {
  score-system-spacing.basic-distance = #18
}

\layout {
  indent = #0
  ragged-last = ##f
  \context {
    \Score
    \consists #(set-bars-per-line '(4))
  }
}

\score {
  <<
    \numericTimeSignature
    \changes_verse
    \structure_verse
  >>
}

\score {
  <<
    \numericTimeSignature
    \changes_chorus
    \structure_chorus
  >>
}

\markup {
  \fill-line {
    \line {}
    \center-column
    \string-lines {
      "Verse x2
      Chorus x4
      Verse (guitar solo) x1
      Verse x2
      Chorus x4 + extra measure Eb
      Chorus (guitar solo) x4
      Chorus (no rhythm) x2
      Chorus (with rhythm) x2"
    }
    \line {}
  }
}
