\version "2.23.8"
\include "../../settings.ly"
\include "simulation-swarm-chords.ly"
\include "simulation-swarm-melody.ly"

\header {
  title = "Simulation Swarm"
  composer = "Adrianne Lenker (Big Thief)"
}

repeatNumbers = {
  \override Dynamics.TextScript.padding = #3
  s1 * 2^\markup { \box \normal-text "4x" } |
  s1 * 2^\markup { \box \normal-text "4x" } |
  s1 * 2^\markup { \box \normal-text "2x" } |
  s1 * 2^\markup { \box \normal-text "8x" } |
}

\score {
  <<
    \new Dynamics { \repeatNumbers }
    \changes
    {
      \key df \major
      \melody
    }
  >>
}
