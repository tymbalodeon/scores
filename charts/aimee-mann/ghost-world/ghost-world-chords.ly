intro = \chordmode {
  fs2:m s8 gs4:m a8 | s1 |
}

verse = \chordmode {
  \repeat unfold 3 {
    e2 b | fs1:m |
  }
  cs2:m a | e b | cs:m a | e1 |
}

chorus = \chordmode {
  \bar "||"
  \repeat unfold 2 {
    b1 | fs:m |
  }
  b | fs2:m a | fs:m e | b1 |
  fs:m |
}

chorusFirstEnding = \chordmode {
  fs2:m a |
}

bridge = \chordmode {
  \repeat unfold 2 {
    a2 e | b1 |
  }
  fs2:m e |
  \time 2/4
  b2 |
  \time 4/4
  \intro
}

coda = \chordmode {
  \cadenzaOn \stopStaff
  s1
  \startStaff \cadenzaOff
  a2 e | b1 |
  s1 | fs:m |
  b1 | fs:m |
  b | fs2:m a
  \repeat volta 3 {
    \parenthesize a2 e |
    \alternative {
      \volta 1,2 { b1 | }
      \volta 3 { b1 | }
    }
  }
  \intro
}

changes = \chords {
  \intro
  \repeat volta 2 {
    \verse
    \bar "||"
    \chorus
    \alternative {
      \volta 1 {
        b1 |
        \chorusFirstEnding
      } \volta 2 {
        b1 |
      }
    }
  }
  \bar "||"
  \bridge
  \bar "||"
  \coda
}
