\version "2.25.20"

\include "helpers/settings.ily"

\include "helpers/bar-numbers-left.ily"
\include "helpers/set-bars-per-line.ily"

\include "scores/jewel-case/a-collection-of-memorial-shirts/a-collection-of-memorial-shirts-chart.ily"
\include "scores/jewel-case/calamity-gravity/calamity-gravity-chart.ily"
\include "scores/jewel-case/decide-for-yourself/decide-for-yourself-chart.ily"
\include "scores/jewel-case/little-to-nothing/little-to-nothing-chart.ily"
\include "scores/jewel-case/the-mind-mote/the-mind-mote-chart.ily"
\include "scores/jewel-case/no-greater-lie/no-greater-lie-chart.ily"
\include "scores/jewel-case/peace-in-time/peace-in-time-chart.ily"
\include "scores/jewel-case/shut-my-lids/shut-my-lids-chart.ily"
\include "scores/jewel-case/underground/underground-chart.ily"
\include "scores/jewel-case/victim-of-victory/victim-of-victory-chart.ily"

\header {
    title = "Porchfest 2024"
    subtitle = "Jewel Case"
    instrument = "Bass"
    composer = "Nick Brown"
}

\paper {
    tocItemMarkup = \tocItemWithDotsMarkup
}

\layout {
    \numericTimeSignature
}

\markup \vspace #1

\markuplist \table-of-contents

\pageBreak

\tocItem \markup "Underground"

\score {
    \header {
        piece = "Underground"
    }

	\undergroundLayout
	\undergroundMusic
}

\pageBreak

\tocItem \markup "Victim of Victory"

\score {
    \header {
        piece = "Victim of Victory"
    }

	\victimOfVictoryLayout
	\victimOfVictoryMusic
}

\pageBreak

\tocItem \markup "Calamity Gravity"

\score {
    \header {
        piece = "Calamity Gravity"
    }

	\calamityGravityLayout
	\calamityGravityMusic
}

\pageBreak

\tocItem \markup "Peace in Time"

\score {
    \header {
        piece = "Peace in Time"
    }

	\peaceInTimeLayout
	\peaceInTimeMusic
}

\pageBreak

\tocItem \markup "A Collection of Memorial Shirts"

\score {
    \header {
        piece = "A Collection of Memorial Shirts"
    }

	\aCollectionOfMemorialShirtsLayout
	\aCollectionOfMemorialShirtsMusic
}

\pageBreak

\tocItem \markup "Shut My Lids"

\score {
    \header {
        piece = "Shut My Lids"
    }

	\shutMyLidsLayout
	\shutMyLidsMusic
}

\pageBreak

\tocItem \markup "Little to Nothing"

\score {
    \header {
        piece = "Little to Nothing"
    }

	\littleToNothingLayout
	\littleToNothingMusic
}

\pageBreak

\tocItem \markup "No Greater Lie"

\score {
    \header {
        piece = "No Greater Lie"
    }

	\noGreaterLieLayout
	\noGreaterLieMusic
}

\pageBreak

\tocItem \markup "Decide for Yourself"

\score {
    \header {
        piece = "Decide for Yourself"
    }

	\decideForYourselfLayout
	\decideForYourselfMusic
}

\pageBreak

\tocItem \markup "The Mind-Mote"

\score {
    \header {
        piece = "The Mind-Mote"
    }

	\theMindMoteLayout
	\theMindMoteMusic
}
