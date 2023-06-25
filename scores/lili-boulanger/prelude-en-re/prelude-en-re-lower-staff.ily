\include "helpers/fake-clef-treble.ily"
\include "helpers/fake-clef-bass.ily"

lower_staff = \relative c {
  \key df \major
  \clef "bass"

  % measure 1
  << {
    \stemDown
    r4 df'2 ( <b df>4 |

    % measure 2
    <a b df>4 <af df>2 )
    \stemNeutral
    af,4 ~ |

    % measure 3
    af4
  } \\ {
    <df, df,>1 |

    % measure 2
    s2. <df, df'>4 ~ |

    % measure 3
    <df df'>4
  }
  >>
  df'''2 ( <b df>4 |

  % measure 4
  <a b df>4 <af df>8 ) r
  <<
    af,4
    \\
    <df,, df'>4
  >>
  <b''' df>4 ( |

  % measure 5
  <af df> ) r
  <<
    af,4
    \\
    <df,, df'>4
  >>
  <f' df' f> |

  % measure 6
  % measure 7
  \repeat unfold 2 {
    <df af' df>
    <df, df'>2
    <f' df' f>4 |
  }

  % measure 8
  % measure 9
  \repeat unfold 2 {
    <df af' df>
    <df, df'>2
    <f' a df f>4 |
  }

  % measure 10
  <df af' df>
  <<
    af'2
    \\
    <df,, af' df>2
  >>
  r4 |

  % measure 11
  r
  \clef "treble"
  <cf'''' ef>2 ( <f, a cf>4 |

  % measure 12
  <cf' a> <ef, g>2 <f a>4 |

  % measure 13
  <f ef b> <f df af> )
  \clef "bass"
  <<
    af,,4
    \\
    <df,, df'>4
  >>
  \clef "treble"
  <f''' ef b> ( |

  % measure 14
  <f df af> ) r
  \clef "bass"
  <<
    af,,2
    \\
    <df,, df'>2
  >>

  % measure 15
  r4
  <<
    af''2
    \\
    <df,, df'>2
  >>
  \clef "treble"
  f'''4 ( |

  % measure 16
  f2 ef4 f8 gf |

  % measure 17
  \time 3/4
  g8 f4 g8 a [ b ] |

  % measure 18
  cs4 b cs8 ds ) |

  % measure 19
  \time 4/4
  \clef "bass"
  <gf,,, df' a'>2
  <<
    \tuplet 3/2 { bf'4 ( df bf ) }
    \\
    <df, gf,>2
  >> |

  % measure 20
  <gf, df' a'>2
  <<
    \new Voice { \voiceOne \tuplet 5/4 { bf'8 ( c df ef f ) } }
    \new Voice { \voiceTwo <df, gf,>2 }
  >> |

  % measure 21
  \clef "treble"
  <<
    \new Voice { \voiceOne gf'8 ( a4 bf c8 ) }
    \new Voice { \voiceTwo <bf, df>2. }
  >> |

  % measure 22
  <<
    \new Voice { \voiceOne gf'8 ( a4 bf c8 ) }
    \new Voice { \voiceTwo <af, df>2. }
  >> |

  \time 4/4
  \clef "bass"

  % measures 23-24
  \repeat unfold 2 {
    << {
      <af, df f>4 ( <g' ef bf>2 <a f c>4 )
    } \\ {
      df,,,1
    } >> |
  }

  % measures 25-26
  \repeat unfold 2 {
    <b''' g d>4 ( b2 <c af f ef>4 ) |
  }

  % measure 27
  \showStaffSwitch
  \change Staff = "upper"
  \clef "bass"
  <b g d>2
  \hideStaffSwitch

  \clef "treble"
  <ef ef'>4 <ef' ef'>
  \change Staff = "lower"

  % measure 28
  << {
    r4
    \fakeTrebleClef
      \relative af {
        <af df f>2 ( <bf ef g>4
      } |

    \clef "treble"
    \tuplet 3/2 { <c, f a>8 <bf ef g> <af df f> }
    <af df f>4 )
  } \\ {
    <df,,, df' af'>1
    s2
  } >>
  \clef "treble"

  % measures 29
  \clef "bass"
  <df'' df'>4 <df df,> |

  % measures 30
  \clef "bass"
  << {
    r4
    \fakeTrebleClef
      \relative af {
        <af df f>2 ( <bf ef g>4
      } |

    \clef "treble"
    \tuplet 3/2 { <d' g b>8 <bf ef g> <af df f> }
  <af df f>4 )
  } \\ {
    <df,,, df' af'>1
  } >>
  \clef "bass"
  <df'' df'>4 <df df,> |


  % measure 32
  \clef "bass"
  << {
    r4
    \fakeTrebleClef
      \relative af {
        <b ef>4 ( <af df f>2 )
      } |
  } \\ {
    <df,, df' af'>1
  } >>
  \clef "treble"

  % measure 33
  \clef "bass"
  df''2
  ef4 <ef, ef'> |

  % measure 34
  <df df'>4 r r2 |
}
