\version "2.25.19"

structureRiff = {
  | s2 * 4
}

structureVerse = {
  | s2 * 8
}

structureChorus = {
  | s2 * 8
}

structureBridge = {
  | s2 * 8
}

structureRiffA = {
  | s2 * 8
}

structureRiffB = {
  | s2 * 8
}

shutMyLidsStructure = {
  \time 2/4

  \repeat volta 2 {
    \structureRiff
  }

  \repeat volta 2 {
    \structureVerse
  }

  \repeat volta 2 {
    \structureRiff
  }

  \repeat volta 2 {
    \structureVerse
  }

  \structureChorus

  \repeat volta 2 {
    \structureChorus
  }

  | s2 * 4

  \repeat volta 2 {
    \structureBridge
  }

  \repeat volta 2 {
    \structureRiff
  }

  \structureRiffA
  \structureRiffB
  \structureChorus

  \repeat volta 2 {
    \structureChorus
  }

  \repeat volta 2 {
    \structureChorus
  }
}
