\version "2.25.16"
hits = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \voiceTwo
  \improvisationOn
  fs4 fs8. fs16 r8 gs4 a8~ |
  a1 |
}

verse = \relative c'' {
  \segnoMark \default
  e8 b4 cs8~ cs e4 g,8( |
  gs!) e4 fs8~ fs a4 gs8~ |
  gs e4 b'8~ b4. gs8~ |
  gs gs4. r4 gs8 gs~ |

  gs e4 b'8~ b4. cs16 gs~ |
  gs2. b8 e~ |
  e cs4 ds8~ ds e4 b8~ |
  b e,4 b'8~ b a4 gs8~ |

  gs e4 g8( gs) fs4 e8~ |
  e2.
}

firstChorus = \relative c'' {
  b16 b8. |

  r8 e( fs4) \glissando e8 ds4 cs8~ |
  cs2 fs8( gs4.) \glissando |
  fs2 e8( fs)~ \tuplet 3/2 { fs8 e ds~ } |
  ds cs4. fs8( gs4.) \glissando |

  fs2 e8( fs)~ \tuplet 3/2 { fs8 e ds } |
  cs2 e |
}

secondChorus = \relative c'' {
  \codaMark \default
  b8( cs)~ \tuplet 3/2 { cs8 b cs } b2 |
  r2 r8
  \override Staff.OttavaBracket.font-series = #'medium
  \set Staff.ottavation = #"8va (2nd time only)"
  \ottava #1
  fs'( gs4)~ |

  gs8 fs16 e fs2. |
  \ottava #0
  \alternative {
    \volta 1 {
      R1 * 2 |
    } \volta 2 {
      r2 r4 r8 b, |
      \bar "||"
      fs'8( gs)~ gs16 fs e8 fs( gs4) fs8~ |
    }
  }
}

bridge = \relative c'' {
  fs4 r8 ds e ds cs b |
  fs'( gs)~ \tuplet 3/2 { gs e fs~ } fs fs( gs) fs8~ |
  fs4 r8 ds e ds cs b |
  r8 e4.~ e2
  <<
    \new Voice {
      ds4 \tuplet 3/2 { r8 cs b~ }
      \time 2/4
      \voiceOne
      b a4.
    }
    \\
    \new Voice \with {
      \consists "Pitch_squash_engraver"
    } {
      \voiceTwo
      \improvisationOn
      s2 |
      \time 4/4
      fs4 fs8. fs16 r8 gs4 a8~ |
      a1_\markup { \italic "D.S. al Coda" } |
    }
  >>
}

melody = {
  \hits
  \repeat volta 2 {
    \verse
    \firstChorus
    \secondChorus
  }
  \bridge
}

coda = \relative c'' {
  fs8( gs)~ \tuplet 3/2 { gs8 fs e } fs( gs4) fs8~ |
}

melodyCoda = \relative c'' {
  \codaMark 1
  \coda fs2. \firstChorus |
  \repeat volta 3 {
    \coda
    \alternative {
      \volta 1,2 { fs2. r4 | }
      \volta 3 { fs4 r8 ds e ds cs b | }
    }
  }
  <<
    \new Voice {
      \voiceOne
      r8 e4.~ e2~ |
      e2 r |
    }
    \\
    \new Voice \with {
      \consists "Pitch_squash_engraver"
    } {
      \voiceTwo
      \improvisationOn
      fs4 fs8. fs16 r8 gs4 a8~ |
      a1 |
    }
  >>
  \bar "|."
}

melody_hits = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  fs4 fs8. fs16 r8 gs4 a8~ |
  a1 |
}

melody_verse = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  \repeat unfold 3 {
    e2 b |
    s1 |
  }
  cs2 a |
  e b|
  cs a |
  s1 |
}

melody_chorus = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  s1 * 5 |
  fs2 a |
  fs e
  s1 * 3 |
}

melody_bridge = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  \repeat unfold 2 {
    a2 e |
    s1 |
  }
  fs2 e |
  s
}

melody_coda = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  a2 e |
  s1 * 6 |
  fs2 a |
  a2 e 2 |
  s1 |
}
