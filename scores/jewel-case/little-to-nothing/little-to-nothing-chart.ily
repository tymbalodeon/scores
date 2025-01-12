\version "2.25.22"

\include "little-to-nothing-changes.ily"
\include "little-to-nothing-melody.ily"
\include "little-to-nothing-structure.ily"

littleToNothingLayout =
	\layout {
		\context {
			\Score \consists
				#(set-bars-per-line '(
					4 4 8 4
					4 8 4 4
 				)
			)
	}
  }

littleToNothingMusic =
  <<
    \littleToNothingChanges

    \new Staff {
      <<
        \littleToNothingMelody
        \littleToNothingStructure
      >>
    }
  >>
