\version "2.27.0"

\include "add-articulations.ily"

addFingerings =
#(define-music-function
   (music fingerings)
   (ly:music? string?)
   (add-articulations 'FingeringEvent 'digit 0 5 music fingerings))
