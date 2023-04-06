\include "add-articulations.ily"

addStringNumbers =
#(define-music-function
   (music string-number)
   (ly:music? string?)
   (add-articulation 'StringNumberEvent 'string-number 0 9 music string-number))
