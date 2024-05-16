\version "[lilypond_version]"

\include "helpers/settings.ily"

\include "changes.ily"
\include "lyrics.ily"
\include "melody.ily"
\include "structure.ily"

\header {
  title = "[title]"
  composer = "[composer]"
}

melody = \new Staff {
  <<
    \melody \addlyrics \words
    \melody
    \structure
  >>
}

music = \relative c'' {
    \key c \major
    \time 4/4

    | c1
}

\score {
    \new Staff \with {
        instrumentName = "[instrument]"
        \numericTimeSignature
    } {
        \compressMMRests

        \changes
        <<
            \music
        >>
    }
}
