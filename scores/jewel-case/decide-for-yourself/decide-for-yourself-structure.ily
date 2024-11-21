\version "2.25.20"

structureIntro = {
  | s1 * 7
}

structureVerse = {
  | s1 * 4
}

structureChorus = {
  | s1

  \time 5/8

  | s8 * 5

  \time 4/4

  | s1
  | s1
}

structurePostChorus = {
  | s1 * 4
}

decideForYourselfStructure = {
  \numericTimeSignature

  \structureIntro

  \repeat volta 2 {
    \structureVerse
  }

  \repeat volta 2 {
    \structureChorus
  }

  \repeat volta 2 {
    \structurePostChorus
  }

  \repeat volta 2 {
    \structureVerse
  }

  \repeat volta 2 {
    \structureChorus
  }

  \repeat volta 2 {
    \structurePostChorus
  }

  \sectionLabel \markup \bold "Solo"

  \repeat volta 2 {
    \structureVerse
  }

  \repeat volta 2 {
    \structureChorus
  }

  \repeat volta 2 {
    \structurePostChorus
  }

  \repeat volta 2 {
    \structureVerse ^\markup \italic "bass/drums tacet"
  }

  \repeat volta 2 {
    | s1 ^\markup \italic "bass/drums re-enter"

    \time 5/8

    | s8 * 5

    \time 4/4

    | s1
    | s1
  }

  \repeat volta 2 {
    \structurePostChorus
  }

  \repeat volta 2 {
    \structurePostChorus ^\markup \italic "loop and fade out"
  }
}
