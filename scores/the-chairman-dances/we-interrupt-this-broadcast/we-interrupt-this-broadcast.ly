\version "2.25.16"

\include "helpers/settings.ily"

\header {
  title = "We Interrupt This Broadcast"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

music = \relative g, {
  \key d \major
  \time 6/8
  \clef "bass"

  \compressMMRests {
    R2 * 21 |
  }

  g8 g g g g d' |
  \repeat unfold 6 { g8 }

  \repeat volta 4 {
    r8 a, e' a4. |
    r8 fs, cs' a' ( b4 ) |
    r8 g, d' g4. |

    \alternative {
      \volta 1,3 {
        r4 r8 <b, d'>4. |
      }

      \volta 2 {
        r8 d e fs e d |
      }

      \volta 4 {
        r8 d e fs a fs |
      }
    }
  }

  r8 a, e' a4. |
  r8 fs, cs' fs' e cs |
  r8 g, d' g4. |
  r4 r8 <b, d'>4. |

  r8 a e' a4. |
  r8 fs, cs' a' ( b4 ) |
  r8 g, d' g4. |
  r8 g d' g4. |

  r8 g,, d' g4. |
  r8 g'16 fs e d b a g8 fs |

  \key cs \minor

  cs8 e' ds cs e, ds |
  cs8. gs' cs8 b b, |
  ds'8 cs b ~ b ds, cs |
  b8. ds' b fs |

  b,4. b8 cs d |
  e8 fs gs a8. e' |
  cs8 r r r4. |

  cs,8 e' ds cs e, ds |
  cs8. gs' cs8 b b, |
  ds'8 cs b ~ b ds, cs |
  b8. ds' b8. fs |

  b,4. b8 cs d |
  e8 fs gs a8. e' |
  cs8 r r r4. |

  cs,8 e' ds cs e, ds |
  cs8. gs' cs8 b b, |
  ds'8 cs b ~ b ds, cs |
  b8. ds' b8. fs |

  b,4. b8 cs d |
  e8 fs gs a8. e' |
  cs8 r r r4. |

  R1 * 3 |

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
