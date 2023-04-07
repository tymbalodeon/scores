\include "helpers/add-fingerings.ily"
\include "helpers/reverse-articulation-directions.ily"

\include "invention-6-voice-two.ily"

fingerings =
#"
    5 4 3
    2 1 3
    2 1 2 3 4
    1 5

    1 2 1
    x 2 1 2
    x 3 4 3 2
    3 1 2 1 2 3 2 1 2

    1 2 1
    4 2 1
    5 2 1
    5 2 1

    5 2 1
    4 3 2
    1 5 2
    4 1 2 1 4 1

    5 4 2
    5 1 2 1 2 3 2 3 4
    3 1 2 1 2 3 2 1 2
    1 5
"
fingerings = \reverseArticulationDirections \fingerings
pianoLower = \keepWithTag #'piano \voiceTwo
pianoLower = \addFingerings \pianoLower \fingerings
