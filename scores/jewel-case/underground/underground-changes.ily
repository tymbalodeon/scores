\version "2.25.19"

changesIntro = \chordmode {
  | c2. * 2
}

changesOne = \chordmode {
  | c4. e:7
  | a4.:m a:m/g
  | f4. g
  | c2.
}

changesTwo = \chordmode {
  | c4. e:7
  | f2.
  | d2.:7
  | g2.
}

changesThree = \chordmode {
  | c4. c:7/e
  | f2.:maj
  | d2.:m
  | a4.:m a:m7

  | c4. c:7/e
  | f2.:maj
  | e4. e:7
}

changesPreChorusOne = \chordmode {
  | c4 g8:/b a4:m a8:m/g
  | e2.:m
  | e2.
}

changesPreChorusTwo = \chordmode {
  | c4 g8:/b a4:m a8:m/g
  | e2.:m
  | s8 c g8:/b a4:m a8:m/g
  | e2.:m
  | e2.
  | s2.
}

changes = \chords {
  \changesIntro
  \changesOne

  \changesOne
  \changesTwo
  \changesThree
  \changesPreChorusOne
  \changesOne

  \changesOne
  \changesTwo
  \changesThree
  \changesPreChorusTwo
  \changesOne

  \changesTwo
  \changesOne
}
