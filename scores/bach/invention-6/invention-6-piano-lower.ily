\version "2.25.24"

\include "helpers/add-fingerings.ily"
\include "helpers/move-articulations-below.ily"

\include "scores/bach/invention-6/invention-6-voice-two.ily"

fingerings =
    #"
        5 4 3
        2 1 3
        2 1 2 3 5
        1 5

        1 2 1
        s 2 1 2
        s 3 4 3 2
        3 1 2 1 2 3 2 5 4

        5 2 1
        4 2 1
        4 1 3
        5 2 1

        5 2 1
        4 3 2
        1 5 2
        4 1 2 1 5 1

        3 2 1
        5 1 2 1 2 3 2 3 4
        3 1 2 1 2 3 2 1 2
        1 5

        1 2 1
        s 1 2 1
        s 3 2 3 2
        3 1 2 1 2 3 2 5 4

        5 3 2
        1 4 3
        2 1 2 3 4
        1 5

        4 2 1
        5 3 1
        4 2 1
        5 1 2

        3 2 1
        4 1 2
        3 2 1
        5 2 1

        5 3 1
        5 2 1
        5 1
        s 2 3
        1 4 1
        5 s 1 2

        s 1 2 1
        s 2 1 2
        s 3 4 3 2
        3 1 2 1 2 3 2 5 4

        5 4 3
        2 1 3
        2 1 2 3 5
        1 1 2 1 3 4

        3 1 3 5
        s 1 2 1 2 3 5
        s 1 3 5
        s 1 2 1 2 3 5

        s 1 3 5
        s 1 3 1
        s 2 3 4
        5 1 2 1 3 5 3 1 2

        1 2 1
        5 1 2 3
        5 1 3 1 2 3
        5 1
    "

fingerings = \moveArticulationsBelow \fingerings
pianoLower = \keepWithTag #'piano \inventionSixVoiceTwo
pianoLower = \addFingerings \pianoLower \fingerings
