\version "2.25.17"

\include "helpers/settings.ily"

\header {
  title = "Winter Trip"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
  \tempo 4 = 70
  \key f \minor
  \time 3/2
  \clef "bass"

  \compressMMRests {
    R1. * 21 |

    \time 4/4

    R1 * 5 |
  }

  \mark \default

  \time 3/2

  f2. c4 ef4 ef4 |
  af,1 ~ af4. ef'16 e |
  f2. c4 ef4 ef4 |
  <af ef'>1 ~ <af ef'>8 bf,8 c8 ef16 e |
  f2 g8. af16 ~ af4 ef8. bf'8. ef,8 |
  c1 ~ c8 bf8 af8 g8 |
  f2. ef'4 g,4 g4 |

  \time 4/4

  af1 ~ |
  af2. ~ af8 ef'8 |
  af2 ~ af8. bf8. c8 |
  ef2 ~ ef8. f16 ~ f8 bf,16 c |
  g'8. ef16 ~ ef2 ~ ef8. c,16 |

  \time 3/2

  \mark \default

  \repeat volta 2 {
    f8 r16 g'8 ef8 c,16 f8 r16 g'8  ef8 c,16 ef8 r16 bf''8 ef,8 ef,16 |
    af8 r16 g'8 ef8 ef,16 af8 r16 g'8 ef8 ef,16 af8 r16 f'8 ef af,16 |
  }

  f8 r16 g'8 ef8 c,16 f8 r16 g'8 ef8 c,16 ef8 r16 bf''8 ef,8 ef,16 |

  \repeat volta 2 {
    \time 4/4
    af8 r16 g'8 ef8 ef,16 af8 r16 g'8 ef8 ef,16 |
    af8 r16 f'8 ef8 ef,16 af8 r16 f'8 ef8 ef,16 |
  }

  af8 r16 g'8 ef8 ef,16 af8 r16 g'8 ef af,16 |

  \mark \default

  \time 3/2

  \repeat percent 4 {
    \repeat unfold 4 { f,16 }
  }

  \repeat percent 2 {
    \repeat unfold 4 { g }
  } |

  \repeat percent 5 {
    \repeat unfold 4 { af16 }
  }

  af af ef' e |

  \repeat percent 3 {
    \repeat unfold 4 { f16 }
  }

  f, f f f

  \repeat percent 2 {
    \repeat unfold 4 { ef' }
  } |

  \repeat percent 4 {
    \repeat unfold 4 { af16 }
  }

  af af bf, bf c c ef e |
  \repeat percent 2 {
    \repeat unfold 4 { f16 }
  }

  g g g af af af af af ef ef ef bf' ef, ef bf' bf |

  \repeat percent 4 {
    \repeat unfold 4 { c,16 }
  }

  c c bf bf af af g g |

  \repeat percent 4 {
    \repeat unfold 4 { f16 }
  }

  g g g g g g g8 |

  \mark \default

  \repeat volta 2 {
    \time 4/4
    af'8 r16 g'16 ~ g16 ef8 ef,16 af8 r16 g'16 ~ g16 ef8 ef,16 |
    af8 r16 f'16 ~ f16 ef8 ef,16 af8 r16 f'16 ~ f16 ef8 ef,16
  }

  af8 r16 g'16 ~ g16 ef8 ef,16 af8 r16 g'16 ~ g16 ef16 af,16 g16 |

  \time 3/2

  <f c'>1. ~ <f c'> |

  \compressMMRests {
    R1. * 8 |
  }

  \repeat unfold 6 {
    <af ef'>4
  } |

  \repeat unfold 5 {
    <af ef'>4
  }

  <af ef'>4 ~ |
  <af ef'>1. |

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \numericTimeSignature
    \music
  }
}
