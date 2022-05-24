\version "2.23.8"
\include "../../settings.ly"
\include "simulation-swarm-chords.ly"

\header {
  title = "Simulation Swarm"
  composer = "Adrianne Lenker (Big Thief)"
}

intro = \repeat volta 4 {
  s1 * 4 |
}

verseB = {
  ef16 ef8 ef16 ef8 df df4 bf8 c16 df~ |
}

verse = \relative c'' {
  \parenthesize df4 ef8 f16 c~ c8 c4. |
  \verseB
  df4 ef8 f16 c~ c8 c4. |
  \verseB
}

singleVerse = \repeat volta 4 {
  \verse
}

interlude = \relative c'' {
  df4 r2. | R1 * 2 | r2. bf8 c16 df~ |
}

chorus = \relative c'' {
  s1 * 13 |
}

melody = {
  \intro
  \singleVerse
  \interlude
  \singleVerse
  \chorus
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
