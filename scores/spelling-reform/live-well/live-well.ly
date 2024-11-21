\version "2.25.20"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Live Well"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c'' {
  \key d \major
  \time 4/4

  | R1 * 4 ^\markup \italic "(instrumental)"
  | R1 * 16 ^\markup \italic "(verse)"
  | R1 * 16 ^\markup \italic "(group vocals)"

  \repeat volta 4 {
    | fs,8 d' a e' ~ e d a d
    | e,8 d' a fs' ~ fs d a d
    | fs,8 d' a e' ~ e d a d
    | e,8 d' a fs' ~ fs d a d

    | fs,8 d' a e' ~ e d a d
    | e,8 d' a fs' ~ fs d a d

    \alternative {
      \volta 1,2,3 {
        | fs,8 d' a fs' ~ fs d a d
        | d,8 d' b g' ~ g fs d4
      }

      \volta 4 {
        | \tuplet 3/2 { d4 cs b } \tuplet 3/2 { a4 g fs }
      }
    }
  }

  | d1 \fermata
  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Guitar"
    \numericTimeSignature
  } {
    \compressMMRests
    \music
  }
}

% Sing loud (out?) of the ending hours
% Live well in the coldest towns
% Remember your one love
% She can’t hurt you now, she can’t hurt you now
