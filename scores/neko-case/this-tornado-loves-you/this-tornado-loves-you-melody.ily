guitar_strum = \relative c' \new CueVoice {
  \repeat percent 4 {
    \repeat unfold 4 {
      <g b d>16
    }
  }
}

bass_notes = {
  g4. g8~ g4
}

bass_riff = {
  \bass_notes r |
}

bass_intro = \relative c {
  \new CueVoice {
    \clef "bass"
    \repeat unfold 2 {
      \bass_riff
    }
    \transpose g b, {
      \bass_riff
    }
    \bass_notes_\markup { \italic "etc..." }
  }
}

intro = \relative c'' {
  \guitar_strum
  \bass_intro
}

part_one_base = \relative c'' {
  fs fs fs fs |
  fs8 e d4 r8 d d e |
  fs e d4 r2 |
  fs8 e d4 r4 a |

  fs'8( e) fs e fs4 a |
  a8 e f( e) d4 d8 e |
  fs?16 fs d8 fs2.~ |
  fs4 r
}

part_one = \relative c'' {
  \part_one_base

  a8 a4. |
  fs'1( |
  e) |
}

part_two = \relative c'' {
  r2 r8 fs, fs d'~ |
  d4 d8 d~ d e4 fs8~ |
  fs fs4. r8 fs fs fs(~ |
  fs8 d4) d8 d16 b8. b4~ |
  b2 r4 fs |

  d'8 d4 d8~ d fs4 g8~( |
  g fs) fs8 g~ g fs4 fs8 |
  e d r e d4 r4 |
  e8 d r e d4 r8 fs~ |

  fs fs4 fs8( e8) d4. |
  r2 d8 d4. |

  b1( |
  as) |
}
}

part_three = {
  r2 r8 fs fs d' |

  d2 r8 e d fs~ |
  fs fs4 fs8( e) d4 d8 |
  a'8. fs fs8 g8. fs fs8 |
  a8. fs fs8 e8. d e8 |

  fs16( e) d4 e8 fs16( e) d4. |
  r2 r8. a' a8 |
  a8.( fs) fs8~( fs e) fs4~ |
  fs2 r |

  f16( e) d4 d8 f16( e) d4. |
  fs?16( e) d4 d8 fs16( e) d4. |
  d8.( b) b8~ b a b4~ |
  b2 r |

  f'16( e) d4 d8 f16( e) d4. |
  fs?16( e) d4 d8 fs16( e) d4 d8 |
  a'8.( fs) fs8~ fs e fs8( g16 fs~ |
  fs2) r2 |
}

instrumental = {
  <<
    \new CueVoice \relative c' {
      bf8 d g bf d g r4 |
      b,,?8 d g b? d g s4 |
      fs4. d8~ d4 r |
      r4 a d r |
      b,?8 d g b? d g s4 |
    }
    {
      s1 * 4 |
      s2. d8 e16 fs~ |
    }
  >>
}

part_four = {
  fs8. e16 d e8 fs16~ fs8. e16 d e8 fs16~ |
  fs8. e16 d e8 fs16~ fs4 r8 a, |

  fs'4 fs8 d~ d a4 fs'8~ |
  fs fs4 d8~ d4 a8 a~ |
  a2 r |
  r2. d8 e16 fs~ |

  fs8. e16 d8 e fs( e) d16 e8 fs16~ |
  fs8 e a fs16 fs~ fs4 r8 e |

  fs8 e r fs e4 r |
  fs8 e r fs e4 r |
  fs8 e r fs e4 r |
  fs8 e r fs e4 a16 a8 a16~ |

  a8. fs16~ fs8 fs~ fs e fs4~ |
  fs2. r4 |
  R1 |
  r2 r8 a4 a8~ |

  a8. fs fs8 g8. fs( e8 |
  d4) r r8 a'4 a8~ |
  a8 e4 fs8~ fs2~ |
  fs2 r4 g, |
}

part_five = {
  r2. a'8 a(~ |
  a fs) r4 r8 fs fs g( |
  fs) fs fs g( fs) fs fs b,~ |
  b b4. r2 |

  r4 a b8 a4 a'8~ |
  a fs4. r2 |
  r4 fs g8( b,) b b~ |
  b fs'~( fs2. |

  e) r4 |
  r2. r8 d |
}


tornado = {
  \repeat unfold 4 {
    fs8. d d8 fs8. d d8 |
  }
  fs8. d d8 fs8. d16~ d4 |
}

outro_one = \new CueVoice \relative c {
  \clef "bass"
  d4. d'8~ d4 d_\markup { \italic "etc..." } |
}

outro_two = \relative c {
  \clef "bass"
  d1~ |
  d2 r |
}

melody = \relative c'' {
  \intro
  \clef "treble"
  g4 |
  \part_one
  \part_two
  \part_three
  \instrumental
  \part_four
  \part_one_base
  r2 |
  \part_five
  \tornado

  r8. d' d8 d8. cs b8 |
  b4 fs2.~ |
  fs r8 d |

  <<
    {
      \tornado

      r8. fs fs8 fs8. a, a8 |
    }
    \new Staff \with {
      \magnifyStaff #2/3
      \remove "Time_signature_engraver"
    } {
      \outro_one
    }
  >>
  <<
    {
      a4 fs'2.~ |
      fs2 r |
    }
    \new Staff \with {
      \magnifyStaff #2/3
      \remove "Time_signature_engraver"
    } {
      \outro_two
    }

  >>
}
