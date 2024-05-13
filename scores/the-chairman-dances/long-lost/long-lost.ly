\version "2.25.13"

\include "helpers/settings.ily"

\header {
  title = "Long Lost"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

music = \relative gs {
  \key e \major
  \clef "bass"

  \repeat unfold 2 {
    \compressMMRests {
      \time 3/2

      R1. * 3 |

      \time 4/4

      R1 |
    }
  }

  \time 3/2

  gs4 ~ gs8 b16 ( cs16 ) e1 |
  gs,4 ~ \tuplet 3/2 { gs8 \acciaccatura { b8*3/2 } gs'8 cs,8 } e1 |
  e,4 ~ e8 b16 bs16 cs2. ~ cs4 \glissando |
  e,4 ~ e8 fs16 ( gs16 )  cs1 ^\fermata |

  b'4. fs8 \glissando a,1 |
  d4. fs16 gs16 a1 |
  e4 ~ e8 b16 bs16 r4 e'2. ~ |
  e4 r4 r4 gs2. |

  ds4 ~ ds16 e16 ds8 cs2. ~ cs8 r8 s2 r4 e2. ^\fermata |
  gs,4 ~ gs8 b16 ( cs16 ) e4 \tuplet 3/2 { e16 ( fs16 ) ( e16 ) ~ } <cs e>8 ~ <cs e>4 e16 cs16 b8 |

  gs4 ~ gs8 \glissando
  \acciaccatura { cs8 ( } gs'16 fs16 )
  \tuplet 3/2 { e8 b'8 e,8 } \tuplet 3/2 { a8 cs,8 gs'8 }
  \tuplet 3/2 { \acciaccatura { fs8*3/2 ( } gs8 ) fs8 e8 } \tuplet 3/2  { ds8 cs8 b8 } |
  e,4 ~ e8 b16 bs16 r4 e'2 e16 ( fs8. ) ~ |

  fs4 r r gs2 \tuplet 3/2 { gs8 fs e } |
  ds4 ~ ds16 e ds8 cs2. ~ cs8 r s2 r4 e2. |
  e,4 ~ e8 b16 bs cs2. ~ cs4 |
  e,4 ~ e8 fs16 ( gs ) cs1 \fermata |

  b'4. -\markup \italic "rit." fs8 a,1 \fermata |
  d4. fs16 gs a4
  < \tweak style #'diamond cs
    \tweak style #'diamond fs
    \tweak style #'diamond b
  >2. \arpeggio |

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
