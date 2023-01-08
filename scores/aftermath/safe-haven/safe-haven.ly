\version "2.24.0"

\include "settings.ily"
\include "style.ily"

\header {
  title = "Safe Haven"
  composer = "Aftermath"
}

riff = {
  fs8 d a' e as fs cs' b ~ |

  b8 d8 b8 g8 fs8 fs8 e8 a,8 |

  d8 d a' e as fs cs' b ~ |

  b8 d b g fs fs e a, |
}

music = \relative fs {
  \key d \major
  \time 4/4
  \clef "bass"

  % measures 1-2
  \compressMMRests {
    R1 * 2 |
  }

  % measures 3-6
  \sectionLabel "Riff"
  \riff

  % measure 7
  \sectionLabel "Verse"
  d8 d r d fs fs r fs |

  % measure 8
  b8 b r a g g fs a, |

  % measure 9
  d8 d r d fs fs r fs |

  % measure 10
  b8 b r d fs, fs e e |

  % measure 11
  d8 d r d cs cs r cs |

  % measure 12
  b8 b r b a a e' fs |

  % measure 13
  d8 d r d cs cs r cs |

  % measure 14
  g8 g r g a a cs d |

  % measure 15
  e4 e r8 fs r g ~ |

  % measure 16
  \repeat unfold 8 { g8 } |

  % measure 17
  e,4 e r8 fs r g ~ |

  % measure 18
  g8 g g g g g g e |

  % measure 19
  \sectionLabel "Chorus"
  a4 a r8 e' a g ~ |

  % measure 20
  g4 r8 g8 ( fs8 ) ( d8 ) d8 e8 |

  \repeat volta 2 {
    % measure 21
    a,4 a' r8 e a g ~ |

    % measure 22
    g4 r8 g ( fs ) ( d8 ) d8 e8 |
  }

  % measures 23-26
  \sectionLabel "Riff"
  \riff

  % measure 27
  \sectionLabel "Verse"
  d8 d r d fs fs r fs |

  % measure 28
  b8 b r a g g fs a, |

  % measure 29
  d8 d r d fs fs r fs |

  % measure 30
  b8 b r e16 ( d ) fs,8 fs e e |

  % measure 31
  d8 d r d cs cs r cs |

  % measure 32
  b8 b r b a a e' fs |

  % measure 33
  d8 d r d cs cs r cs |

  % measure 34
  g8 g r g a a cs d |

  % measure 35
  e4 e r8 fs r g ~ |

  % measure 36
  \repeat unfold 8 { g8 } |

  % measure 37
  e,4 e r8 fs r g ~ |

  % measure 38
  g8 g g g g g g e |

  % measure 39
  \sectionLabel "Chorus"
  a4 a r8 e' a g ~ |

  % measure 40
  g4 r8 g8 ( fs8 ) ( d8 ) d8 e8 |

  \repeat volta 2 {
    % measure 41
    a,4 a' r8 e a g ~ |

    % measure 42
    g4 r8 g ( fs ) ( d8 ) d8 e8 |
  }

  \repeat volta 2 {
    % measure 43
    \sectionLabel "Solo"
    d8 d d d a a a as |

    % measure 44
    b8 b b a g g fs e |
  }

  % measure 45
  \sectionLabel "Outro"
  d'4 r8 d fs4 r8 fs |

  % measure 46
  b4 r8 a16 ( b ) ( a8 ) g16 ( a ) ( g8 ) a, |

  % measure 47
  d4 r8 d fs4 r8 fs |

  % measure 48
  b4 r8 b fs'16 -> e d b -> a fs e8 -> |

  % measure 49
  d4 r8 d cs4 r8 cs |

  % measure 50
  b4 r8 b a a e' fs |

  % measure 51
  d4 r8 d cs4 r8 cs |

  % measure 52
  g4 r8 g a a b cs |

  % measure 53
  d8 d r cs16 d e8 e r d16 e |

  % measure 54
  fs8 fs r e16 fs g8 fs16 g a8 g16 a |

  % measure 55
  d8 d r d cs8. cs16 ( d8 ) cs |

  % measure 56
  g8 g r g g16 ( a8 ) a16 ~ a
  \once \override NoteHead.style = #'cross d,16
  fs8 |

  % measure 57
  d4 d8. d16 cs8 cs d cs |

  % measure 58
  b4 b8. b16 a8 a e' fs |

  % measure 59
  d4 d8. d16 cs8 cs d cs |

  % measure 60
  g4 g8. g16 a8 a b cs |

  % measure 61
  \sectionLabel "Riff"
  fs8 d a' e as fs cs' b ~ |

  % measure 62
  b8 d b g fs fs e a, |

  % measure 63
  d8 d a' e as fs cs' b ~ |

  % measure 64
  b8 d b g fs fs e a, |

  % measure 65
  d8 d a' e as fs cs' b ~ |

  % measure 66
  b8 d b g fs fs e e |

  % measure 67
  d8 d r d cs cs r cs |

  % measure 68
  b8 b r b a a e' fs |

  % measure 69
  d8 d r d cs cs r cs |

  % measure 70
  g8 g r g a a b cs |

  % measure 71
  fs8 d a' e as fs cs' b ~ |

  % measure 72
  b8 d b g fs fs e a, |

  % measure 73
  d8 -\markup \italic "rit." d a' e as fs cs' b ~ |

  % measure 74
  b8 d b g fs fs e a, |

  % measure 75
  d1 ~ |

  % measure 76
  d1

  \bar "|."
}

\layout {
  \context {
    \Score
    \consists
    #(set-bars-per-line '(6 4 4 4
                          4 4 4 4
                          4 4 4 4
                          4 4 4 4
                          4 6))
  }
}

\score {
  \new Staff \with {
    instrumentName = "Bass guitar"
  } {
    \music
  }
}
