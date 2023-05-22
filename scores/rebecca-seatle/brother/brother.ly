\version "2.25.5"

\include "settings.ily"

\header {
  title = "Brother"
  composer = "Rebecca Seatle"
  arranger = "Ben Rosen, bass"
}

intro = \relative cs {
  \repeat volta 2 {
    cs8. gs'16 r8 ds' ( e2 ) ~ |
    e8 cs'4 gs8 ~ gs4 ds \glissando |
    b,8. fs'16 r8 cs'8 ( b2 ) ~ |
    b8 ds4 gs8 ~ gs4 b, |
  }
}

hits = \relative cs {
  cs2. r8 e' ~ |
  e8 cs r ds ~ ds bs ~ bs4 |
  cs,2. r8 a' ~ |
  a8 a r gs ~ gs2 |

  cs,2. r8 e' ~ |
  e8 a r ds, ~ ds gs ~ gs4 |
  cs,,2. r8 a ~ |
  a8 a r gs ~ gs2 |
}

verse = \relative cs {
  \repeat volta 2 {
    cs8 e'16 e e8 ds16 ds ds8 cs16 cs a8 gs |
    e8 cs'16 cs cs8 a16 a a8 gs16 gs e8 ds |
    cs8 b'16 b b8 gs16 gs gs8 e16 e ds8 cs |
    gs8 cs16 cs cs8 b16 b b8 gs16 gs fs8 e |
  }
}

music = \relative cs {
  \tempo 4=120
  \key cs \minor
  \time 4/4
  \clef "bass"

  \intro

  \repeat unfold 2 {
    \mark \default

    \hits

    \mark \default

    \verse
  }

  \mark \default

  \hits

  \mark \default

  \repeat volta 2 {
    cs8  e16 e e8 fs gs b r4 |
    cs,8 e16 e e8 fs gs e' cs r |
    a,8 cs16 cs cs8 e fs gs r4 |
    a,8 cs16 cs e8 cs b ds fs r |
  }

  \mark \default

  \hits

  \mark \default

  \compressMMRests {
    R1 * 12 |
  }

  \mark \default

  \intro

  \mark \default

  \hits

  \mark \default

  \repeat volta 2 {
    cs8 e' ( ds ) b cs fs, gs b |
    cs,8 e' ( ds ) b cs fs, gs e |
    b8 e' ( ds ) cs gs b e, fs |

    \alternative {
      \volta 1 {
        b,8 e' ( ds ) cs gs b e, fs |
      }

      \volta 2 {
        b,4 r r2 |
      }
    }
  }

  \mark \default

  a4 r8 a ~ a r a4 ~ |
  a2 a4 b |
  cs4 r8 cs ~ cs r cs4 ~ |
  cs2 cs4 b |

  a4 r8 a ~ a r a4 ~ |
  a2 a4 b |
  cs4 -\markup \italic "rit." r8 cs ~ cs r cs4 ~ |
  cs1 |

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
