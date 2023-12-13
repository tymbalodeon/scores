\version "2.25.11"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "simulation-swarm-chords.ily"
\include "simulation-swarm-melody.ily"
\include "simulation-swarm-structure.ily"

\header {
  title = "Simulation Swarm"
}

% repeatNumbers = {
%   \override Dynamics.TextScript.padding = #3
%   s1 * 2^\markup { \box \normal-text "4x" } |
%   s1 * 2^\markup { \box \normal-text "4x" } |
%   s1 * 2^\markup { \box \normal-text "2x" } |
%   s1 * 2^\markup { \box \normal-text "8x" } |
% }

% \book {
%   \header {
%     composer = "Adrianne Lenker (Big Thief)"
%   }

%   \score {
%     <<
%       \new Dynamics { \repeatNumbers }
%       \changes
%       {
%         \key df \major
%         \melody
%       }
%     >>
%   }
% }


\book {
  \bookOutputSuffix "form"

  \header {
    composer = "Big Thief"
  }

  \score {

    \layout {
      \numericTimeSignature
      \context {
        \Score \consists
        #(set-bars-per-line '(
          2 4 4 4
          2 2
          2 4 4 5
          4
        ))
      }
    }

    <<
      \changes
      {
        \key df \major
        <<
          \melody
          \structure
        >>
      }
    >>
  }
}
