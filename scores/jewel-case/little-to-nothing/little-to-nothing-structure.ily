\version "2.25.16"

structureIntro = {
  | s2. * 4
}

structureVerse = {
  | s2. * 4
}

structurePreChorus = {
  | s2. * 4
}

structureChorus = {
  | s2. * 4
}

littleToNothingStructure = {
  \time 6/8

  \repeat volta 2 {
    \structureIntro
  }

  \repeat volta 2 {
    \structureVerse
  }

  \structurePreChorus

  \repeat volta 2 {
    \structureChorus
  }

  \structurePreChorus

  \repeat volta 2 {
    \structureVerse
  }

  \structurePreChorus

  \repeat volta 2 {
    \structureChorus
  }

  \structurePreChorus

  \repeat volta 2 {
    \structureIntro
  }
}
