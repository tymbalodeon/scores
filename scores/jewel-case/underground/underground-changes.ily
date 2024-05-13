\version "2.25.15"
one = \chordmode {
  | c4. e:7
  | a4.:m a:m7
  | f4. g
  | c2.
}

two = \chordmode {
  | c4. e:7
  | f2.
  | d2.:7
  | g2.

  | c4. c:7
  | f2.:maj
  | d2.:m
  | a4.:m a:m7

  | c4. c:7
  | f2.:maj
  | e4. e:7

  | c4 g8:/b a4:m a8:m/g
  | e2.:m
}

changes = \chords {
  \one
  \two

  | e2.

  \one
  \two

  | e2. * 2

  \one

  | c4. e:7
  | f2.
  | e2.
  | s2.
}
