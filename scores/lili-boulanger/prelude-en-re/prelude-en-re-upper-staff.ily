upper_staff = \relative c' {
  \key df \major
  \clef "treble"

  % measure 1
  r4 <df ef f>2 <b df ef g>4 |

  % measure 2
  <df ef f a>4 <ef f bf>2 r4 |

  % measure 3
  r4 <df ef f>2 <b df ef g>4 |

  % measure 4
  << {
    a'8 [ c bf ]
  } \\ {
    <ef, f>4 <ef f>8
  } >>
  r r4
  << {
    a8 c
  } \\ {
    <ef, f>4
  } >>

  % measure 5
  << {
    r8 f'4. ~ f8 f, r4
  } \\ {
    bf4 r2 <a ef a,>4
  } >> |

  << {
    % measure 6
    r8 f' af2.~ |

    % measure 7
    af8 gf f ef ef df r4 |

    % measure 8
    r8 f bf4~ bf8 f a f |
  } \\ {
    % measure 6
    <bf,, f' bf>4 r2 <a ef' a>4 |

    % measure 7
    <bf' f bf,> r2 <a ef a,>4 |

    % measure 8
    <bf f bf,> r2 <f' df a>4 |
  } >>

  % measure 9
  << {
    bf,8 f' af4. gf8 f ef
  } \\ {
    <bf, f'>4 r2 <f' a df>4
  } >>

  % measure 10
  << {
    ef'8 [ df ]
  } \\ {
    <ef, bf'>4
  } >> r4 r8 f4 f8 |

  % measure 11
  f' f,4 f8 f'8 f, <ef'  f> f, |

  % measure 12
  <f' gf> <ef gf, f> <f gf> <ef gf, f>4 <ef gf, f>8 <f gf> <ef gf, f> |

  % measure 13
  <a ef> <f a,> <c' ef,> <f, a,> r <ef a,> <a ef> <ef a,> |

  << {
    % measure 14
    r8 f' af4. gf8 f ef |

    % measure 15
    ef df s2. |
  } \\ {

    % measure 14
    <bf f>8 <f af,> <bf f> <f af,> r <bf ef,> <a f> <f a,> |

    % measure 15
    <bf f>8 <ef, af,> r <ef af,> <bf' f> <f af,> <bf f> <ef, af,> |
  } >>

  % measure 16
  <f ef cf gf>8 <ef gf,> <f cf> <ef gf,> r <ef gf,> <f cf> <ef gf,> |

  % measure 17
  \time 3/4
  <g ds cs f,>8 <b, ds> <g' cs> <ds a> <g cs, b> <ds cs f,> |

  % measure 18
  <a' f ef> <ef gf, f>4 <ef gf, f>8 <a f ef> <cs, gf f> |

  % measure 19
  \time 4/4
  <f f,>8. <cs a>16 <f f,>8. <cs a>16
  \stemUp
  <f df g, f>8 <df bf> <f df g, f> <df bf> |
  \stemNeutral

  % measure 20
  <f f,>8. <cs a>16 <f f,>8. <cs a>16
  \stemUp
  \tuplet 5/4 {
    <f df g, f>8 <df bf> <f df g, f> <df bf> <f df g, f>
  } |
  \stemNeutral

  % measures 21-22
  \time 3/4
  \repeat unfold 2 {
    <d d,>16. <af bf>32 <d d,>16. <af bf>32 <d d,>16. <af bf>32
    r16. <af bf>32 <c c,>16. <af bf>32 <df df,>16. <af bf>32 |
  }

  % measure 23
  \time 4/4
  \ottava #1
  <af''' af,>8 <g g,> <f f,> <ef ef,> <c c,> <b b,> <a a,> <g g,> |
  \ottava #0

  % measures 24
  <f f,> <ef ef,> <c c,> <b b,> <a a,> <g g,> <f f,> <ef ef,> |

  % measuress 25-26
  \repeat unfold 2 {
    <cs cs,> <b b,> <a a,> <g g,>4 <f f,> <ef ef,>8 |
  }

  % measure 27
  \clef "bass"
  <b g d>2
  \clef "treble"
  <ef ef'>4 <ef' ef'> |

  % measures 28-31
  \repeat unfold 2 {
    <ef' ef'>
    <ef,, ef'> <ef' ef'>
    <ef' ef'> |

    <ef,, ef'> <ef' ef'> <ef, ef'> <ef' ef'> |
  }

  % measure 32
  <ef' ef'> <a,, ef' a>2 <bf f' bf>4 |

  % measure 33
  << {
    <ef' ef'>4 <ef, ef'>
  } \\ {
    ef4 ef,
  } >>
  s2 |

  % measure 34
  R1 |

  \bar "|."
}
