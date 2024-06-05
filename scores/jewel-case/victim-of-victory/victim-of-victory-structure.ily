\version "2.25.15"

key_and_time = {
  \key g \major
  \time 4/4
}

structureIntro = {
  \repeat volta 2 {
    | s1 * 4
  }
}

structureOne = {
  | s1 * 4
}

structureTwo = {
  | s1 * 8
}

structureThree = {
  | s1 * 8
}

structureBridge = {
  | s1 * 6
}

structureFour = {
  \repeat volta 2 {
    | s1 * 5
  }
}

structureOutro = {
  | s1 * 5
}

structure = {
  \numericTimeSignature
  \key_and_time

  \structureIntro
  \structureOne

  \repeat volta 2 {
    \structureOne
  }

  \structureTwo

  \repeat volta 2 {
    \structureOne
  }

  \structureThree
  \structureBridge
  \structureOne

  \repeat volta 2 {
    \structureOne
  }

  \structureFour
  \structureOutro

  \bar "|."
}
