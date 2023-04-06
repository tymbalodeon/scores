\include "add-articulations.ily"

addFingerings =
#(define-music-function
   (music finger-number)
   (ly:music? string?)
   (add-articulation 'FingeringEvent 'digit 0 5 music finger-number))
