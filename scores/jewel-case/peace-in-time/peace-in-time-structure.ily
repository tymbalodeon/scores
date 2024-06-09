\version "2.25.16"

structureIntro = {
  | s1 * 4
}

structureVerse = {
  | s1 * 4
}

structureChorus = {
  | s1 * 5
}

structureRiff = {
  | s1 * 2
}

structureSoloRiff = {
  | s1 ^\markup \italic "band tacet"
  | s1
}

structureBridge = {
  \repeat volta 2 {
    | s1 * 3
  }

  | s1
}

peaceInTimeStructure = {
  \key a \major
  \numericTimeSignature

  \repeat volta 2 {
    \structureIntro
  }

  \structureVerse

  \structureIntro
  \structureVerse

  \structureChorus

  \repeat volta 2 {
    \structureRiff
  }

  \structureSoloRiff
  \structureBridge
  \structureIntro

  \repeat volta 2 {
    \structureVerse
  }
}
