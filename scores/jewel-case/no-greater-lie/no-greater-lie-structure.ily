\version "2.25.24"

structureIntro = {
  \repeat unfold 12 {
    | s8 * 12
  }
}

structureVerse = {
  \repeat unfold 18 {
    | s8 * 12
  }
}

structureBridge = {
  \repeat unfold 8 {
    | s8 * 12
  }
}

structureChorus = {
  \repeat unfold 8 {
    | s8 * 12
  }
}

structurePostChorus = {
  \repeat unfold 12 {
    | s8 * 12
  }
}


noGreaterLieStructure = {
  \time 12/8

  \structureIntro

  \repeat volta 2 {
    \structureVerse
  }

  \structureBridge
  \structureChorus
  \structurePostChorus

  \repeat volta 2 {
    \structureVerse
  }

  \structureBridge

  \repeat volta 2 {
    \structureChorus
  }

  \structurePostChorus

  \bar "|."
}
