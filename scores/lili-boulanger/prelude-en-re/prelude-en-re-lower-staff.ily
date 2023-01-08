lower_staff = \relative c {
  \key df \major
  \clef "bass"

  % measure 1
  <df, df,>1 |

  % measure 2
  <a'' b>4 <af df>2
  <<
    af,4 ~
    \\
    <df,, df'>4 ~
  >> |

  % measure 3
  <<
    af''4
    \\
    <df,, df'>4
  >>
  r r2 |

  % measure 4
  <a''' b df>4 <af df>4
  <<
    af,4
    \\
    <df,, df'>4
  >>
  <b''' df>4 |

  % measure 5
  <af df> r
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
    <df af' df> <df, df'>2 <f' a df f>4 |
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
  <cf'''' ef>2 <f, a df>4 |

  % measure 12
  <df' a> <ef, g>2 <f a>4 |

  % measure 13
  \clef "bass"
  <f ef b> <f df b>
  <<
    af,,4
    \\
    <df,, df'>4
  >>
  <f''' ef b> |

  % measure 14
  <f df af> r
  <<
    af,,2
    \\
    <df,, df'>2
  >> |

  % measure 15
  r4
  <<
    af''2
    \\
    <df,, df'>2
  >>
  \clef "treble"
  f'''4 |

  % measure 16
  f2 ef4 f8 gf |

  % measure 17
  \time 3/4
  g8 f4 g8 a [ b ] |

  % measure 18
  c4 b cs8 ds |

  % measure 19
  \time 4/4
  \clef "bass"
  <a,, df gf>2
  <<
    \tuplet 3/2 { bf'4 ef c }
    \\
    <df, g>2
  >> |

  % measure 20
  <a df gf>2
  <<
    \new Voice { \voiceOne \tuplet 5/4 { bf'8 c df ef f } }
    \new Voice { \voiceTwo <df, g>2 }
  >> |

  % measure 21
  \clef "treble"
  <<
    \new Voice { \voiceOne g'8 a4 bf c8 }
    \new Voice { \voiceTwo <bf, df>2. }
  >> |

  % measure 22
  <<
    \new Voice { \voiceOne g'8 a4 bf c8 }
    \new Voice { \voiceTwo <af, df>2. }
  >> |

  \time 4/4
  \clef "bass"
  << {
    % measures 23-24
    \repeat unfold 2 {
      <af, df f>4 <g' ef bf>2 <a f c>4 |
    }

    % measures 25-26
    \repeat unfold 2 {
      <b g d>4 b2 <c af f ef>4 |
    }

    % measure 27
    <b g d>2 r |

    % measure 28
    r4 <af, df f>2 <bf ef g>4 |

    % measures 29-30
    \clef "treble"
      \repeat unfold 2 {
      \tuplet 3/2 { <c' f a>8 <bf ef g> <af df f> }
      <af df f>4 r2 |
    }

    % measure 31
    r4 <b ef>4 <af df f>2 |

    % measure 32
    R1 |

    % measure 33
    s2
    \clef "bass"
    << {
      s4 ef'
    } \\ {
      ef,4 <ef, ef'>
    } >> |

    % measure 34
    R1 |
  } {
    % measures 23-24
    \new Staff {
      \once \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
      \key df \major
      \clef "bass"
      \ottava #-1
      \repeat unfold 2 {
        df,1 |
      }
      \ottava #0

      % measures 25-27
      R1 * 2 |
      <cs''' cs,>8 <b b,> <a a,> <g g,> ~ <g g,> <f f,>4 <ef ef,>8 |

      % measure 28
      << {
        af,1
      } \\ {
        <df,, df'>1
      } >> |

      % measures 29-30
      \repeat unfold 2 {
        r2 <df' df'>4 <df, df'> |
      }

      % measure 31
      R1 |

      % measure 32
      << {
        af''1
      } \\ {
        <df,, df'>1
      } >> |

      % measure 33
      df'2 r |

      % measure 34
      <df df'>4 r r2 |
    }
  } >>
}