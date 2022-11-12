versePickup = \relative c'' {
  r2 r8 cs cs cs8~ |
}

verseMelody = {
  \repeat volta 2 {
    cs4 cs r cs8 cs |
    cs d4 d8~ d4 r |
    d8 d4 d8 d4 d8 d~ |
    d8 d cs b8~ b cs b a~ |

    a4 r8 a a4 gs |
    \codaMark \default
    r4 cs8 cs a4 a |
    gs a gs8 a4 fs8~ |
    \alternative {
      \volta 1 {
        fs4 r r8 cs' cs cs8~ |
      }
      \volta 2 {
        fs,4 r8 a a a4 cs8 |
      }
    }
  }
}

chorusMelody = {
  r2 r4 r8 b~ |
  b b4. r4 r8 b~ |
  b b r4 r2 |
  r4 r8 a a a4 cs8 |

  r2 r4 r8 b~ |
  b b4. r4 r8 b~ |
  b b b r r2 |
  \alternative {
    \volta 1 {
      r2 r8 cs cs cs
    } \volta 2 {
      s1 |
    }
  }
}


melody = \relative c'' {
  s1*4 |
  \bar "||"
  s1*7 |

  \versePickup
  \repeat volta 2 {
    \segnoMark \default
    \verseMelody
    \chorusMelody
  }

  s1*7 |

  \versePickup
  \repeat volta 2 {
    cs4 cs r cs8 cs |
    cs d4 d8~ d4 r |
    d8 d4 d8 d4 d8 d~ |
    d8 d cs b8~ b cs b a~ |

    a4 r8 a a4 gs |
    \alternative {
      \volta 1 {
        r4 cs8 cs a4 a |
        gs a gs8 a4 fs8~ |
        fs4 r r8 cs' cs cs8~ |
      }
      \volta 2 {
        s1*2 |
      }
    }
  }
  \time 2/4 s2 |
  \bar "||"

  \time 4/4 s1 * 6 |
  \chorusMelody
}

melody_verse = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  s1 * 3 |
  a2 a |
  s1 * 4 |
}

melody_bridge = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  s1 * 2 |
  s2 |
  s1 |
  \repeat unfold 2 {
    d2 e |
    s1 |
  }
}
