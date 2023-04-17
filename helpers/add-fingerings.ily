\include "add-articulations.ily"

addFingerings =
#(define-music-function
   (music fingerings)
   (ly:music? string?)
   (add-articulations 'FingeringEvent 'digit 0 5 music fingerings))
