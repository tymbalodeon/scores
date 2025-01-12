\version "2.25.22"

\include "victim-of-victory-changes.ily"
\include "victim-of-victory-structure.ily"

victimOfVictoryLayout =
	\layout {
		\context {
			\Score \consists
				#(set-bars-per-line '(
					4 8 6 6 6 8 8 5 5
					)
			)
	}
}

victimOfVictoryMusic =
    <<
      \changes
      \structure
    >>
