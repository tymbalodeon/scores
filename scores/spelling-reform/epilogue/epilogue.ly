\version "2.25.19"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"
\include "helpers/set-bars-per-line.ily"

\include "epilogue-changes.ily"
\include "epilogue-lyrics.ily"
\include "epilogue-melody.ily"
\include "epilogue-structure.ily"

\header {
  title = "Epilogue"
    subtitle = "Spelling Reform"
  composer = "Dan Wisneiwski"
}

% melody = \new Staff {
%   <<
%     \melody \addlyrics \words
%     \melody
%     \structure
%   >>
% }

\layout {
  ragged-last = ##f
  \context {
    \Score
    \consists #(set-bars-per-line '(3 4 4 4 4 4))
  }
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
