\version "2.25.21"

\include "no-greater-lie-changes.ily"
\include "no-greater-lie-melody.ily"
\include "no-greater-lie-structure.ily"

noGreaterLieLayout =
	\layout {
		\context {
			\Score \consists
				#(set-bars-per-line '(
					12 8 10 8
					10 10 8 10
					8 8 8 4
 				)
			)
	}
  }

noGreaterLieMusic =
  <<
    \noGreaterLieChanges

    \new Staff {
      <<
        \noGreaterLieMelody
        \noGreaterLieStructure
      >>
    }
  >>
