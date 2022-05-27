intro = \chordmode {
  d1 | s | s | s |
}

verseA = \chordmode {
  a1 | d | e:11 | a2 a/gs |
}

instrumentalVerseB = \chordmode {
  fs1:m | e:11 | d | s |
}

vocalVerseB = \chordmode {
  fs1:m | fs:m/cs | e:11 |
  \alternative {
    \volta 1 {
      d |
    } \volta 2 {
      d |
    }
  }
}

finalVerseB = \chordmode {
  d | d | \time 2/4 e2:11 |
  \time 4/4 d1 | d2 e | d1 | d2 e |
  d1 | d
}

instrumentalVerse = {
  \verseA
  \instrumentalVerseB
}

vocalVerse = \repeat volta 2 {
  \verseA
  \vocalVerseB
}

finalVerse = \chordmode {
  \repeat volta 2 {
    \verseA
    fs1:m
    \alternative {
      \volta 1 {
        {
          fs:m/cs | e |  d |
        }
      } \volta 2 {
        \finalVerseB
      }
    }
  }
}

chorus = \chordmode {
  a1 | e | b:min | d |
  a1 | e | b:min
}

changes = \chords {
  \intro
  \instrumentalVerse
  \bar "[|:"
  \repeat volta 2 {
    \vocalVerse
    \chorus
    \alternative {
      \volta 1 {
        d |
        \bar ":|]"
      }
      \volta 2 { d | }
    }
  }
  \instrumentalVerse
  \finalVerse
  \chorus
}
