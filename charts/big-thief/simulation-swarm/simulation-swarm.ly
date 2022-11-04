\version "2.23.80"

\include "settings.ily"
\include "simulation-swarm-chords.ily"
\include "simulation-swarm-melody.ily"

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
