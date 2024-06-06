\version "2.25.15"

\include "underground-changes.ily"
\include "underground-melody.ily"
\include "underground-structure.ily"

undergroundLayout = 
	\layout {
		\context {
			\Score \consists
				#(set-bars-per-line '(
					6 4 4 7 
					7 4 4 7 
					6 4 4 4
				)
			)
	}
  }

undergroundMusic =
  <<
    \changes

    \new Staff {
      <<
        \melody
        \structure
      >>
    }
  >>
