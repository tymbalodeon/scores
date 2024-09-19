\version "2.25.19"

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
  | s1 * 6
}

structureBridge = {
  | s1 * 8
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
  \key c \major

  \numericTimeSignature
  \time 4/4

  \structureIntro

  \key g \major

  \structureOne

  \repeat volta 2 {
    \structureOne
  }

  \structureTwo

  \repeat volta 2 {
    \structureOne
  }

  \structureThree

  \bar "||"
  \key f \major

  \structureBridge

  \bar "||"
  \key g \major

  \structureOne

  \repeat volta 2 {
    \structureOne
  }

  \key c \major

  \structureFour
  \structureOutro

  \bar "|."
}
