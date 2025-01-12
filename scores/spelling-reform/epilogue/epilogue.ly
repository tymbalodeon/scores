\version "2.25.22"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "epilogue-changes.ily"
\include "epilogue-lyrics.ily"
\include "epilogue-melody.ily"
\include "epilogue-structure.ily"

\header {
	title = "Epilogue"
	subtitle = "Spelling Reform"
	composer = "Dan Wisneiwski"
}

\paper {
	system-system-spacing = #'((basic-distance . 18))
}

\score {
	<<
        \changes
        \new Staff \with {
            instrumentName = ""
            \numericTimeSignature
        } {
            \compressMMRests
            \melody \addlyrics \words
        }
    >>
}
