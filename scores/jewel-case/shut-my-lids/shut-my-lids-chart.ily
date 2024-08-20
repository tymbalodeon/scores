\version "2.25.17"

\include "shut-my-lids-changes.ily"
\include "shut-my-lids-melody.ily"
\include "shut-my-lids-structure.ily"

shutMyLidsLayout =
	\layout {
		\context {
			\Score \consists
				#(set-bars-per-line '(
					12 12 8 8
					12 12 8 8
					8 8
 				)
			)
	}
  }

shutMyLidsMusic =
  <<
    \shutMyLidsChanges

    \new Staff {
      <<
        \shutMyLidsMelody
        \shutMyLidsStructure
      >>
    }
  >>
