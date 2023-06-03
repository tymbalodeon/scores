\version "2.25.5"

\include "settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "margaritas-at-the-mall-melody.ily"
\include "margaritas-at-the-mall-changes.ily"
\include "margaritas-at-the-mall-structure.ily"

\header {
  title = "Margaritas At The Mall"
  composer = "Purple Mountains"
}

\layout {
  \context {
    \Score \consists
    #(set-bars-per-line '(
      4
      4 6
      4 4
      4 6
      4 2
    ))
  }
}


\score {
  <<
    \numericTimeSignature
    \changes
    \new Staff {
      <<
        \melody
        \structure
      >>
    }
  >>
}