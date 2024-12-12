\version "2.25.21"

\include "helpers/settings.ily"

\header {
  title = "Another Time, Another Place"
  composer = "Aftermath"
  arranger = "Ben Rosen, bass"
}

instrumental = {
  \repeat volta 2 {
    fs4 fs fs8 fs r cs ~ |
    cs8 cs cs cs ~ cs cs cs cs |
    gs4 gs gs8 gs r e |
    r8 e r e' ~ e ( d ) b ( cs )
  }
}

chorus = {
  \mark \default

  \repeat volta 4 {
    r4 b -> b8 ( cs ) fs gs ~ |
    gs8 as b as r gs fs r |

    \alternative {
      \volta 1,2,3 {
        cs4 cs cs8 cs r gs' |
        r8 gs r gs ~ gs fs ds cs |
      }

      \volta 4 {
        \repeat percent 4 {
          \repeat unfold 4 { cs8 }
        }
      }
    }
  }
}

music = \relative c {
  \clef "bass"
  \key b \major
  \time 4/4

  \instrumental

  \mark \default

  \repeat volta 2 {
    fs4 fs8 fs ~ fs fs fs fs |
    gs4 gs8 gs ~ gs gs gs gs |
    b,4 b8 b ~ b b b b |
    e e r e ~ e ( d ) b ( cs )
  }

  fs4 fs8 fs ~ fs fs fs fs |
  gs4 gs8 gs ~ gs gs gs gs |
  b, r b r b b r e |
  r e r e ~ e ( d ) b ( cs ) |

  \chorus

  \mark \default

  \instrumental

  \mark \default

  \repeat volta 2 {
    fs4 fs8 fs ~ fs fs fs fs |
    gs4 gs8 gs ~ gs gs gs gs |
    b,4 b8 b ~ b b b b |
    e e r e ~ e ( d ) b ( cs ) |
  }

  \chorus

  \mark \default

  \repeat volta 4 {
    ds4 ds ds8 ds r b ~ |
    b b b b ~ b b b b |
    fs4 fs fs8 fs r cs' |
    r cs r cs ~ cs cs cs d |
  }

  ds4 ds ds8 es fs b, ~ |
  b fs' b b ~ b fs b, r |

  fs8 -> fs fs fs -> fs fs fs -> fs |
  fs fs -> fs fs fs -> fs fs -> fs |

  \chorus

  fs,1 ~ |
  fs1 |

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
