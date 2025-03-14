\version "2.25.24"

\include "the-mind-mote-changes.ily"
\include "the-mind-mote-melody.ily"
\include "the-mind-mote-structure.ily"

theMindMoteLayout =
	\layout {
		\context {
			\Score \consists
				#(set-bars-per-line '(
                           4 6 5 4 8 6 4 4
 				)
			)
	}
  }

theMindMoteMusic =
  <<
    \theMindMoteChanges

    \new Staff {
      <<
        \theMindMoteMelody
        \theMindMoteStructure
      >>
    }
  >>
