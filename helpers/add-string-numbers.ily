\version "2.27.0"

\include "add-articulations.ily"

addStringNumbers =
#(define-music-function
   (music string-numbers)
   (ly:music? string?)
   (add-articulations 'StringNumberEvent 'string-number 0 9 music string-numbers))
