intro = \relative c'' \new Voice \with {
  \consists "Pitch_squash_engraver"
} {

  \improvisationOn
  \repeat percent 3 {
    c4. c8~ c4 r |
  }
  \improvisationOff r2 r4
}

part_one_base = \relative c'' {
  fs fs fs fs |
  fs8 e d4 r8 d d e |
  fs e d4 r2 |
  fs8 e d4 r4 a |

  fs'8( e) fs e fs4 a |
  a8 e f( e) d4 d8 e |
  fs?16 fs d8 fs2.~ |
}

part_one = \relative c'' {
  \part_one_base
  fs4 r a,8 a4. |

  fs'1( |
  e) |
}

part_two = \relative c'' {
  r2 r8 fs, fs d'~ |
  d4 d8 d~ d e4 fs8~ |
  fs fs4. r8 fs fs fs(~ |
  fs8 d4) d8 d16 b8. b4~ |
  b2 r4 fs |

  d'8 d4 d8~ d fs4 g8( |
  fs4) fs8 g~ g fs4 fs8 |
  e d r e d4 r4 |
  e8 d r e d4 r8 fs~ |

  fs fs4 fs8( e8) d4. |
  r2 d8 d4. |

  b1( |
  as) |
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
      b,,?8 d g b d g s4 |
      fs4. d8 r2 |
      r4 a d r |
    }
    {
      s1 |
      s2. d8 e16 fs~ |
    }
  >>
}

part_four = {
  fs8. e16 d e8 fs16~ fs8. e16 d e8 fs16~ |
  fs8. e16 d e8 fs16~ fs4 r8 a, |

  fs'4 fs8 d~ d b4 fs'8~ |
  fs fs4 d8~ d4 b8 b~ |
  b2 r |
  r2. d8 e16 fs~ |

  fs8. e16 d8 e fs( e) d16 e8 fs16( |
  e8) e a fs16 fs~ fs4 r8 e |

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
  r4 fs g8( a,) a a~ |
  a fs'~( fs2. |

  e) r4 |
  r2. r8 d |
}


tornado = {
  \repeat unfold 4 {
    fs8. d d8 fs8. d d8 |
  }
  fs8. d d8 fs8. d16~ d4 |
}

outro = \new CueVoice \relative c {
  \clef "bass"
  d4. d'8~ d4 d_\markup { \italic "etc..." } |
}

melody = \relative c'' {
  \intro g4 |
  \part_one
  \part_two
  \part_three
  \instrumental
  \part_four
  \part_one_base
  \part_five
  \tornado

  r8. d' d8 d8. cs b8 |
  b4 fs2.~ |
  fs r8 d |

  <<
    {
      \tornado

      r8. fs fs8 fs8. a, a8 |
      a4 fs'2.~ |
      fs r4 |
    }
    \new Staff \with {
      \magnifyStaff #2/3
      \remove "Time_signature_engraver"
    } {
      \outro
    }
  >>
}
