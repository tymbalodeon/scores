\include "helpers/add-fingerings.ily"

\include "invention-6-voice-two.ily"

pianoLower = \keepWithTag #'piano \voiceTwo

pianoLower =
\addFingerings \pianoLower
#"
    5 4 3
    2 1 3
    2 1 2 3 4
    1 5

    1 2 1
    x 2 1 2
    x 3 4 3 2
    3 1 2 1 1 2 1 1 2

    1 3 1
    4 2 1
    3 5 3
    1 3 1
"
