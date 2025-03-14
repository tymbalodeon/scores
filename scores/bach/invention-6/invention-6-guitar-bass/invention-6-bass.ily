\version "2.25.24"

\include "helpers/add-fingerings.ily"
\include "helpers/add-string-numbers.ily"

\include "scores/bach/invention-6/invention-6-voice-two.ily"

bass = \keepWithTag #'bass \inventionSixVoiceTwo

bassWithFingerings =
\addFingerings \bass
#"
    1 4 1
    2 4 1
    2 4 2 1 4
    4 1

    4 2 1 s
    4 1 4 s
    2 1 1 2
    1 4 1 4 4 1 4 2 1

    2 4 1
    2 1 4
    1 2 1
    2 1 4

    2 4 1
    2 4 1
    4 2 1
    2 4 1 4 2 1

    1 2 4
    1 4 2 4 4 1 4 4 1
    4 4 1 4 4 1 4 2 1
    2 2

    4 2 1
    s 4 1 4
    s 2 1 1 2
    1 4 1 4 4 1 4 2 1

    2 4 1
    2 4 1
    2 4 2 1 4
    4 1

    4 2 1
    3 1 1
    4 2 1
    2 4 2

    1 2 4
    1 4 1
    1 2 4
    1 2 1

    2 4 1
    4 4 1
    2 4 s
    1 2
    4 1 4
    1 1 4 1

    s 4 2 1
    s 4 1 4
    s 2 1 1 2
    1 4 1 4 4 1 4 2 1

    2 4 1
    2 4 1
    2 4 2 1 4
    4 4 1 4 4 1

    4 1 2 4
    s 2 1 2 4 1 2
    s 4 1 2
    s 4 1 4 4 1 2

    s 4 1 2
    s 1 4 2
    s 1 4 1
    2 4 2 4 4 1 4 4 1

    4 1 4
    1 4 4 1
    2 4 1 2 1 4
    0 1
  }
"

bassWithFingerings =
\addStringNumbers \bassWithFingerings
#"
    3 s 2
    s*2 1
    s*4 2
    1 3

    3 s*2
    s*3 4
    s*5
    s*4 2 s*2 3 s

    s 4 3
    s 2 s
    3 4 3
    s 2 s

    4 s 3
    s*2 2
    s 3 2
    3 2 s*2 3 1

    3 s*2
    4 2 s*2 3 s*4
    s*7 4 s
    s*2

    2 s*2
    s*3 3
    s*4 s
    s*7 4 s

    s*2 3
    s*2 2
    s*4 3
    2 4

    3 2 1
    3 2 1
    3 2 1
    4 2

    s*2 s
    3 2 s
    s*2 s
    3 2 1

    3 s 2
    3 2 1
    3 s 1
    s*2 2
    s 3 s
    4 s 2 s

    s 3 s
    s*3 4
    s*4 s
    s*5 2 s*2 3 s

    s*2 2
    4 s 3
    s*4 4
    3 2 s*3 s

    s 1 2 3
    s 2 s*2 3 s 4
    s 2 s 3
    s 2 s*2 3 s 4

    s 2 s 3
    s 1 2 s
    s*2 3 s
    s 2 s*2 3 s*2 2 s

    s*2 s
    3 1 2 s
    3 2 s 3 s 4
    s 3
"
