\version "2.25.15"

\include "helpers/settings.ily"

\include "helpers/bar-numbers-left.ily"
\include "helpers/set-bars-per-line.ily"

\include "scores/jewel-case/underground/underground-chart.ily"
\include "scores/jewel-case/victim-of-victory/victim-of-victory-chart.ily"

\header {
    title = "Porchfest 2024"
    subtitle = "Jewel Case"
    instrument = "Bass"
    composer = "Nick Brown"
    arranger = "Ben Rosen, bass"
}

\paper {
    tocItemMarkup = \tocItemWithDotsMarkup
}

\layout {
    \numericTimeSignature
}

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

\tocItem \markup "Victim of Victory"

\score {
    \header {
        piece = "Victim of Victory"
    }

	\victimOfVictoryLayout
	\victimOfVictoryMusic
}
