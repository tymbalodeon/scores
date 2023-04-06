\include "helpers/add-fingerings.ily"
\include "helpers/add-string-numbers.ily"

\include "invention-6-voice-two.ily"

bass = \keepWithTag #'bass \voiceTwo

bass =
\addFingerings \bass
#"
    1 4 1
    2 4 1
    2 4 2 1 4
    4 1

    4 2 1 x
    4 1 4 x
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
    x 4 1 4
    x 2 1 1 2
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
    2 4 x
    1 2
    4 1 4
    1 1 4 1

    x 4 2 1
    x 4 1 4
    x 2 1 1 2
    1 4 1 4 4 1 4 2 1

    2 4 1
    2 4 1
    2 4 2 1 4
    4 4 1 4 4 1

    4 1 2 4
    x 2 1 2 4 1 2
    x 4 1 2
    x 4 1 4 4 1 2

    x 4 1 2
    x 1 4 2
    x 1 4 1
    2 4 2 4 4 1 4 4 1

    4 1 4
    1 4 4 1
    2 4 1 2 1 4
    0 1
  }
"

bass =
\addStringNumbers \bass
#"
    3 x 2
    x x 1
    x x x x 2
    1 3

    3 x x
    x x x 4
    x x x x x
    x x x x 2 x x 3 x

    x 4 3
    x 2 x
    3 4 3
    x 2 x

    4 x 3
    x x 2
    x 3 2
    3 2 x x 3 1

    3 x x
    4 2 x x 3 x x x x
    x x x x x x x 4 x
    x x

    2 x x
    x x x 3
    x x x x x
    x x x x x x x 4 x

    x x 3
    x x 2
    x x x x 3
    2 4

    3 2 1
    3 2 1
    3 2 1
    4 2

    x x x
    3 2 x
    x x x
    3 2 1

    3 x 2
    3 2 1
    3 x 1
    x x 2
    x 3 x
    4 x 2 x

    x 3 x
    x x x 4
    x x x x x
    x x x x x 2 x x 3 x

    x x 2
    4 x 3
    x x x x 4
    3 2 x x x x

    x 1 2 3
    x 2 x x 3 x 4
    x 2 x 3
    x 2 x x 3 x 4

    x 2 x 3
    x 1 2 x
    x x 3 x
    x 2 x x 3 x x 2 x

    x x x
    3 1 2 x
    3 2 x 3 x 4
    x 3
"
