\version "2.23.8"
\include "../../settings.ly"
\include "simulation-swarm-chords.ly"
\include "simulation-swarm-melody.ly"

\header {
  title = "Simulation Swarm"
  composer = "Adrianne Lenker (Big Thief)"
}

\score {
  <<
    \changes
    {
      \key df \major
      \melody
    }
  >>
}
