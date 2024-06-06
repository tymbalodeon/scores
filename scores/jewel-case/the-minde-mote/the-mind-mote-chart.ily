\version "2.25.15"

\include "the-mind-mote-changes.ily"
\include "the-mind-mote-melody.ily"
\include "the-mind-mote-structure.ily"

theMindMoteLayout = 
	\layout {
		\context {
			\Score \consists
				#(set-bars-per-line '(
                           6
                           8
                           5 4
						   8
							4 6 8
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
