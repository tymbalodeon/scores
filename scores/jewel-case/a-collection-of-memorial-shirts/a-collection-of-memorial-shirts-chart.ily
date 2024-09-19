\version "2.25.19"

\include "a-collection-of-memorial-shirts-changes.ily"
\include "a-collection-of-memorial-shirts-melody.ily"
\include "a-collection-of-memorial-shirts-structure.ily"

aCollectionOfMemorialShirtsLayout =
	\layout {
		\context {
			\Score \consists
				#(set-bars-per-line '(
					6 6 6 6
					4 6 6 6
					4 6
 				)
			)
	}
  }

aCollectionOfMemorialShirtsMusic =
  <<
    \aCollectionOfMemorialShirtsChanges

    \new Staff {
      <<
        \aCollectionOfMemorialShirtsMelody
        \aCollectionOfMemorialShirtsStructure
      >>
    }
  >>
