\version "2.25.24"

\include "helpers/bar-numbers-left.ily"
\include "helpers/set-bars-per-line.ily"
\include "helpers/settings.ily"

\include "starman-changes.ily"
\include "starman-lyrics.ily"
\include "starman-melody.ily"
\include "starman-structure.ily"

\header {
  title = "Starman"
  composer = "David Bowie"
}

melody = \new Staff {
  <<
    \melody \addlyrics \words
    \instrumental
    \structure
  >>
}

\book {
  \score {
    % \layout {
    %   \context {
    %     \Score \consists
    %     #(set-bars-per-line
    %       '(4 4 4 3
    %         4 4
    %         4 4 3
    %         4 3
    %         4 3
    %         4 4
    %         4 4 3
    %         4 4 3
    %         4 4))
    %   }

    % }
    <<
      \numericTimeSignature
      \changes
      \frets
      \melody
    >>
  }
}

% form_layout = \layout {
%   \context {
%     \Score \consists #(set-bars-per-line '(4))
%   }
%   ragged-last = ##f
% }

% \book {
%   \bookOutputSuffix "form"

%   \paper {
%     score-system-spacing.basic-distance = #18
%   }

%   \markup \vspace #1

%   \score {
%     \form_layout
%     <<
%       \numericTimeSignature
%       \changes_intro
%       \new Staff \with {
%         instrumentName = \markup \box "Intro"
%       } {
%         <<
%           \structure_intro
%         >>
%       }
%     >>
%   }

%   \score {
%     \form_layout
%     <<
%       \numericTimeSignature
%       \changes_verse
%       \new Staff \with {
%         instrumentName = \markup \box "Verse"
%       } {
%         <<
%           \structure_verse
%         >>
%       }
%     >>
%   }

%   \score {
%     \form_layout
%     <<
%       \numericTimeSignature
%       \changes_chorus
%       \new Staff \with {
%         instrumentName = \markup \box "Chorus"
%       } {
%         <<
%           \structure_chorus
%         >>
%       }
%     >>
%   }

%   \score {
%     \form_layout
%     <<
%       \numericTimeSignature
%       \changes_solo
%       \new Staff \with {
%         instrumentName = \markup \box "Solo"
%       } {
%         <<
%           \structure_solo
%         >>
%       }
%     >>
%   }

%   \markup \vspace #2

%   \markup \fill-line {
%     \column
%     \override #'(padding . 5)
%     \table #'(1 -1 -1)
%     {
%       \bold Intro \italic "" ""
%       \bold Verse \italic "" ""
%       \bold Chorus \italic "" ""
%       \bold Solo \italic "" ""
%       \bold Verse \italic "" ""
%       \bold Chorus \italic "2x" ""
%       \bold Solo \italic "" "loop first 4 bars only"
%     }
%   }
% }
