\version "2.25.15"

changesIntro = \chordmode {
  | f1 s2
  | s1 s2
  | s1 s2
  | s1 s2

  | d1:m s2
  | d1:m9 s2
  | f1 s2
  | s1 s2

  | a1:m s2
  | s1 s2
  | f1 s2
  | s1 s2
}

changesVerse = \chordmode {
  | f1 s2
  | s2. a:7
  | f1 s2
  | s1 s2

  | c1 s2
  | g1 s2
  | bf1:7 s2
  | ef1:maj7 s2

  | d1:dim7 s2
  | s2. g4.:7 c:maj7
  | f1 s2
  | s1 s2

  | b1:dim7 s2
  | s2. e4.:m g
  | c1 s2
  | s2. f

  | c1 s2
  | s1 s2
}

changesBridge = \chordmode {
  | a1:m s2
  | s1 s2
  | f1 s2
  | s1 s2

  | c1 s2
  | s1 s2
  | g1:7 s2
  | s1 s2
} 

changesChorus = \chordmode {
  | c1:m s2
  | s1 s2
  | ef1:maj7 s2
  | s1 s2

  | f1:m s2
  | s1 s2
  | bf1:7 s2
  | s1 s2
} 

changesPostChorus = \chordmode {
  | ef1:7 s2
  | s1 s2
  | d1:dim7 s2
  | s2. g4.:7 c:maj7

  | f1 s2
  | s1 s2
  | b1:dim7 s2
  | s2. e4.:m g

  | c1 s2
  | s2. f
  | c1 s2
  | s1 s2
} 

noGreaterLieChanges = \chords {
  \changesIntro
  \changesVerse
  \changesBridge
  \changesChorus
  \changesPostChorus

  \changesVerse
  \changesBridge
  \changesChorus
  \changesPostChorus
}
