\version "2.25.22"

\include "decide-for-yourself-changes.ily"
\include "decide-for-yourself-melody.ily"
\include "decide-for-yourself-structure.ily"

decideForYourselfLayout =
	\layout {
		\context {
			\Score \consists
				#(set-bars-per-line '(
					7 8 8 8
					8 8 8
 				)
			)
	}
  }

decideForYourselfMusic =
  <<
    \decideForYourselfChanges

    \new Staff {
      <<
        \decideForYourselfMelody
        \decideForYourselfStructure
      >>
    }
  >>
