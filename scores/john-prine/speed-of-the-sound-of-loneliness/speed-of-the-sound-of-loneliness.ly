\version "2.25.24"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"

\include "speed-of-the-sound-of-loneliness-changes.ily"
\include "speed-of-the-sound-of-loneliness-structure.ily"

\header {
  title = "Speed Of The Sound Of Loneliness"
  composer = "John Prine"
}

\layout {
  \numericTimeSignature
  \context {
    \Score \consists
    #(set-bars-per-line '(4))
  }
}

\score {
  <<
    \changes
    \structure
  >>
}

\markup \italic "\"...We ain't got one word to say...\""
\markup \vspace #1

\score {
  <<
    \last_changes
    {
      \key g \major
      \last_chorus
    }
  >>
}
