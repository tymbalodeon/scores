\version "2.25.19"

\include "helpers/settings.ily"

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
