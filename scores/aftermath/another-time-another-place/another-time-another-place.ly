\version "2.24.0"

\include "settings.ily"
\include "style.ily"

\header {
  title = "Another Time, Another Place"
  composer = "Aftermath"
}

music = \relative c {
  \clef "bass"
  \key b \major
  \time 4/4

  \repeat volta 2 {
    fs4 fs fs8 fs r cs ~ |
    cs cs cs cs ~ cs cs cs cs |
    gs4 gs gs8 gs r e |
    r e r e' ~ e ( d ) b ( cs )
  }

  \sectionLabel "Verse"
  \repeat volta 2 {
    fs4 fs8 fs ~ fs fs fs fs |
    gs4 gs8 gs ~ gs gs gs gs |
    b,4 b8 b ~ b b b b |
    e e r e ~ e ( d ) b ( cs )
  }

  fs4 fs8 fs ~ fs fs fs fs |
  gs4 gs8 gs ~ gs gs gs gs |
  b, r b r b b r e |
  r e r e ~ e ( d ) b ( cs )


  \sectionLabel "Chorus"
  \repeat volta 4 {
    r4 b b8 cs ( fs ) gs ~ |
    gs as b as r gs fs r |

    \alternative {
      \volta 1,2,3 {
        cs4 cs cs8 cs r gs' |
        r gs r gs ~ gs fs ds cs |
      }

      \volta 4 {
        cs8 cs cs cs cs cs cs cs |
        cs cs cs cs cs cs cs cs |
      }
    }
  }

  \repeat volta 2 {
    fs4 fs fs8 fs r cs ~ |
    cs cs cs cs ~ cs cs cs cs |
    gs4 gs gs8 gs r e |
    r e r e' ~ e ( d ) b ( cs )
  }

  \sectionLabel "Verse"
  \repeat volta 2 {
    fs4 fs8 fs ~ fs fs fs fs |
    gs4 gs8 gs ~ gs gs gs gs |
    b,4 b8 b ~ b b b b |
    e e r e ~ e ( d ) b ( cs )
  }

  \sectionLabel "Chorus"
  \repeat volta 4 {
    r4 b b8 cs ( fs ) gs ~ |
    gs as b as r gs fs r |

    \alternative {
      \volta 1,2,3 {
        cs4 cs cs8 cs r gs' |
        r gs r gs ~ gs fs ds cs |
      }

      \volta 4 {
        cs8 cs cs cs cs cs cs cs |
        cs cs cs cs cs cs cs cs |
      }
    }
  }

  \sectionLabel "Solo"
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

  \sectionLabel "Chorus"
  \repeat volta 4 {
    r4 b b8 cs ( fs ) gs ~ |
    gs as b as r gs fs r |

    \alternative {
      \volta 1,2,3 {
        cs4 cs cs8 cs r gs' |
        r gs r gs ~ gs fs ds cs |
      }

      \volta 4 {
        cs8 cs cs cs cs cs cs cs |
        cs cs cs cs cs cs cs cs |
      }
    }
  }

  fs,1 ~ |
  fs

  \bar "|."
}

\layout {
  \context {
    \Score
    \consists
    #(set-bars-per-line
      '(4 4 4 5 5
        4 5 5
        4 4 4))
  }
}

\score {
  \new Staff \with {
    instrumentName = "Bass guitar"
  } {
    \music
  }
}
