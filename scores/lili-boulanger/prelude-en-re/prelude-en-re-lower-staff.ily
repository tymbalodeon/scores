lower_staff = \relative c {
  \key df \major
  \clef "bass"

  % measure 1
  \ottava #-1
  <df, df,>1 |
  \ottava #0

  % measure 2
  <a'' b>4 <af df>2
  \ottava #-1
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
  \ottava #0
  r r2 |

  % measure 4
  <a''' b df>4 <af df>4
  \ottava #-1
  <<
    af,4
    \\
    <df,, df'>4
  >>
  \ottava #0
  <b''' df>4 |

  % measure 5
  <af df> r
  \ottava #-1
  <<
    af,4
    \\
    <df,, df'>4
  >>
  \ottava #0
  <f' df' f> |

  % measure 6
  % measure 7
  \repeat unfold 2 {
    <df af' df>
    \ottava #-1
    <df, df'>2
    \ottava #0
    <f' df' f>4 |
  }

  % measure 8
  % measure 9
  \repeat unfold 2 {
    <df af' df>
    \ottava #-1
    <df, df'>2
    \ottava #0
    <f' a df f>4 |
  }

  % measure 10
  <df af' df>
  \ottava #-1
  <<
    af'2
    \\
    <df,, af' df>2
  >>
  \ottava #0
  r4 |

  % measure 11
  r
  \clef "treble"
  <cf'''' ef>2 <f, a cf>4 |

  % measure 12
  <c' a> <ef, g>2 <f a>4 |

  % measure 13
  <f ef b> <f df af>
  \clef "bass"
  \ottava #-1
  <<
    af,,4
    \\
    <df,, df'>4
  >>
  \ottava #0
  \clef "treble"
  <f''' ef b> |

  % measure 14
  <f df af> r
  \clef "bass"
  \ottava #-1
  <<
    af,,2
    \\
    <df,, df'>2
  >>
  \ottava #0 |

  % measure 15
  r4
  \ottava #-1
  <<
    af''2
    \\
    <df,, df'>2
  >>
  \ottava #0
  \clef "treble"
  f'''4 |

  % measure 16
  f2 ef4 f8 gf |

  % measure 17
  \time 3/4
  g8 f4 g8 a [ b ] |

  % measure 18
  cs4 b cs8 ds |

  % measure 19
  \time 4/4
  \clef "bass"
  <gf,,, df' a'>2
  <<
    \tuplet 3/2 { bf'4 df bf }
    \\
    <df, gf,>2
  >> |

  % measure 20
  <gf, df' a'>2
  <<
    \new Voice { \voiceOne \tuplet 5/4 { bf'8 c df ef f } }
    \new Voice { \voiceTwo <df, gf,>2 }
  >> |

  % measure 21
  \clef "treble"
  <<
    \new Voice { \voiceOne gf'8 a4 bf c8 }
    \new Voice { \voiceTwo <bf, df>2. }
  >> |

  % measure 22
  <<
    \new Voice { \voiceOne gf'8 a4 bf c8 }
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
    \clef "treble"
    r4 <af df f>2 <bf ef g>4 |

    % measures 29
    \tuplet 3/2 { <c f a>8 <bf ef g> <af df f> }
    <af df f>4 r2 |

    % measures 30
    r4 <af df f>2 <bf ef g>4 |

    % measures 31
    \tuplet 3/2 { <d g b>8 <bf ef g> <af df f> }
    <af df f>4 r2 |

    % measure 32
    r4 <b ef>4 <af df f>2 |

    % measure 33
    r2
    \clef "bass"
    ef4 <ef, ef'> |

    % measure 34
    <df df'>4 r r2 |
  } {
    % measures 23-24
    \new Staff = "third" {
      \once \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
      \key df \major
      \clef "bass"
      \ottava #-1
      \repeat unfold 2 {
        df,1 |
      }
      \ottava #0

      % measures 25-26
      R1 * 2 |

      % measure 27
      \change Staff = "upper"
      r2 <ef''' ef'>4 <ef' ef'> |

      % measure 28, 30
      \change Staff = "third"
      \repeat unfold 2 {
        \ottava #-1
        << {
          af,,,1
        } \\ {
          <df,, df'>1
        } >>
        \ottava #0 |

      % measures 29, 31
        r2 <df'' df'>4
        <df, df'>
      }

      % measure 32
      \ottava #-1
      << {
        af'1
      } \\ {
        <df,, df'>1
      } >>
      \ottava #0 |

      % measure 33
      df''2 r |

      % measure 34
      R1 |
    }
  } >>
}
