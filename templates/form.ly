\version "[lilypond_version]"

\include "helpers/set-bars-per-line.ily"
\include "helpers/settings.ily"

\include "changes.ily"
\include "melody.ily"
\include "structure.ily"

\paper {
  score-system-spacing.basic-distance = #18
}

\header {
  title = "[title]"
  composer = "[composer]"
}

\layout {
  ragged-last = ##f
  \context {
      \Score \consists
      #(set-bars-per-line '(4))
  }
}

\markup \vspace #1

\score {
	<<
	    \numericTimeSignature
	    \changes_verse

	    \new Staff \with {
		    instrumentName = \markup \box "Verse"
	    } {
		    <<
		        \melody_verse
		        \structure_verse
		    >>
	    }
	>>
}

\score {
	<<
	    \numericTimeSignature
	    \changes_chorus

	    \new Staff \with {
		    instrumentName = \markup \box "Chorus"
	    } {
		    <<
		        \melody_chorus
		        \structure_chorus
		    >>
	    }
	>>
}

\markup \vspace #2

\markup \fill-line {
	\column
	\override #'(padding . 5)
	\table #'(1 -1 -1) {
		\bold Verse \italic "" ""
		\bold Chorus \italic "" ""
	}
}
