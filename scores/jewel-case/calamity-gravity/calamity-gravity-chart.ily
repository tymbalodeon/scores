\version "2.25.19"

\include "calamity-gravity-changes.ily"
\include "calamity-gravity-melody.ily"
\include "calamity-gravity-structure.ily"

calamityGravityLayout =
	\layout {
		\context {
			\Score \consists
				#(set-bars-per-line '(
					4 4 4 4
					4 8 4 4
					4 4 4 8
					8 8 4 4
					4 8 8 8
					4
 				)
			)
	}
  }

calamityGravityMusic =
  <<
    \calamityGravityChanges

    \new Staff {
      <<
        \calamityGravityMelody
        \calamityGravityStructure
      >>
    }
  >>
