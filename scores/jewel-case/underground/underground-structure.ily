\version "2.25.24"

key_and_time = {
  \key c \major
  \time 6/8
}

structureIntro = {
  | s2. * 2
}

structureOne = {
  \repeat volta 2 {
    | s2. * 4
  }
}

structureTwo = {
  | s2. * 4
}

structureThree = {
  | s2. * 7
}

structurePreChorusOne = {
  | s2. * 3
}

structurePreChorusTwo = {
  | s2. * 6
}

structure = {
  \key_and_time

  \structureIntro
  \structureOne

  % \sectionLabel \markup \bold "Verse 1"

  \structureOne
  \structureTwo

  % \sectionLabel \markup \bold "Verse 2"

  \structureThree
  \structurePreChorusOne

  % \sectionLabel \markup \bold "Chorus"

  \structureOne

  % \sectionLabel \markup \bold "Solo"

  \structureOne
  \structureTwo

  % \sectionLabel \markup \bold "Verse 3"

  \structureThree
  \structurePreChorusTwo

  % \sectionLabel \markup \bold "Chorus"

  \structureOne
  \structureTwo

  | s2.* 4

  \bar "|."
}
