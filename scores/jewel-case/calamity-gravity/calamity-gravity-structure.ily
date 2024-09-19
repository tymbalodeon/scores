\version "2.25.19"

structureIntro = {
  \repeat unfold 4 {
    | s8 * 5
  }
}

structureVerse = {
  \repeat unfold 8 {
    | s8 * 5
  }
}

structurePreChorus = {
  \repeat unfold 8 {
    | s8 * 5
  }
}

structureChorus = {
  \repeat unfold 16 {
    | s8 * 5
  }
}

calamityGravityStructure = {
  \key a \major
  \time 5/8

  \repeat unfold 2 {
    \structureIntro
    \structureVerse

    % \sectionLabel \markup \bold "Verse"

    \repeat volta 2 {
      \structureVerse
    }

    \structurePreChorus
  }

  % \sectionLabel \markup \bold "Chorus"

  \structureChorus
  \structureIntro

  % \sectionLabel \markup \bold "Verse"

  \repeat volta 2 {
    \structureVerse
  }

  \structurePreChorus
  \structureChorus
  \structureIntro

  \bar "|."
}
