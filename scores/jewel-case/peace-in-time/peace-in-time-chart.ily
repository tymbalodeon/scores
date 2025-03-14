\version "2.25.24"

\include "peace-in-time-changes.ily"
\include "peace-in-time-melody.ily"
\include "peace-in-time-structure.ily"

peaceInTimeLayout =
	\layout {
		\context {
			\Score \consists
				#(set-bars-per-line '(
					4 4 4 4
					5 4 5 4
					4
 				)
			)
	}
  }

peaceInTimeMusic =
  <<
    \peaceInTimeChanges

    \new Staff {
      <<
        \peaceInTimeMelody
        \peaceInTimeStructure
      >>
    }
  >>
