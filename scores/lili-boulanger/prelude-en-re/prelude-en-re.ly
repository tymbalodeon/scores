\version "2.24.0"

\include "settings.ily"
\include "style.ily"

\header {
  title = "Prélude en Ré♭"
  composer = "Lili Boulanger"
}

key_signature = \key df \major

beam_override = {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
}

upper_staff = \relative c' {
  \clef "treble"
  \key_signature

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

  \time 3/4

  \repeat unfold 2 {
    <d d,>16. <af bf>32 <d d,>16. <af bf>32 <d d,>16. <af bf>32
    r16. <af bf>32 <c c,>16. <af bf>32 <df df,>16. <af bf>32 |
  }

  \time 4/4

  \ottava #1
  <af''' af,>8 <g g,> <f f,> <ef ef,> <c c,> <b b,> <a a,> <g g,> |
  \ottava #0
  <f f,> <ef ef,> <c c,> <b b,> <a a,> <g g,> <f f,> <ef ef,> |
  \repeat unfold 2 {
    <cs cs,> <b b,> <a a,> <g g,>4 <f f,> <ef ef,>8 |
  }

  \clef "bass"
  <b g d>2

  \clef "treble"
  <ef ef'>4 <ef' ef'> |


  \repeat unfold 2 {
    <ef' ef'> <ef,, ef'> <ef' ef'> <ef' ef'> |

    <ef,, ef'> <ef' ef'> <ef, ef'> <ef' ef'> |
  }

  <ef' ef'> <a,, ef' a>2 <bf f' bf>4 |

  <ef, ef' ef'> <ef, ef' ef'> <ef ef'> ef  |
  R1 |

  \bar "|."
}

lower_staff = \relative c {
  \clef "bass"
  \key_signature

  % measure 1
  <df, df,>1 |

  % measure 2
  <a'' b>4 <af df>2 <df,,, df' af'>4 ~ |

  % measure 3
  <df df' af'>4 r4 r2 |

  % measure 4
  <a''' b df>4 <af df>8 r <df,,, df' af'>4 <b''' df>4 |

  % measure 5
  <af df ef f> r <df,,, df' af'> <f' df' f> |

  % measure 6
  % measure 7
  \repeat unfold 2 {
    <df af' df> <df, df'>2 <f' df' f>4 |
  }

  % measure 8
  % measure 9
  \repeat unfold 2 {
    <df af' df> <df, df'>2 <f' a df f>4 |
  }

  % measure 10
  <df af' df> <df af' df af'>2 r4 |

  % measure 11
  r
  \clef "treble"
  <cf''' ef>2 <f, a cs>4 |

  % measure 12
  <cs' a> <ef, g>2 <f a>4 |

  % measure 13
  \clef "bass"
  <f ef b> <f df b> <df,,, df' af'> <f''' ef b> |

  % measure 14
  <f df af> r <df,,, df' af'>2 |

  % measure 15
  r4 <df df' af'>2
  \clef "treble"
  f'''4 |

  % measure 16
  f2 ef4 f8 gf |

  % measure 17
  \time 3/4
  g8 f4 g8 a b |

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

  % measure 23
  % measure 24
  \time 4/4
  \clef "bass"
  \repeat unfold 2 {
    << {
      <af, df f>4 <g' ef bf>2 <a f c>4
    } \\ {
      df,,,1
    } >>
  } |

  % measure 25
  % measure 26
  \repeat unfold 2 {
    <b''' g d>4 b2 <c af f ef>4 |
  }

  % measure 27
  <cs cs,>8 <b b,> <a a,> <g g,> ~ <g g,> <f f,>4 <ef ef,>8 |

  % measure 28
  % measure 30
  \repeat unfold 2 {
    <<
      {
        \voiceTwo
        <df,, df' af'>1
      }
      \\
      {
        \voiceOne
        r4 <af''' df f>2 <bf ef g>4
      }
    >> |

    % measure 29
    % measure 31
    \clef "treble"
    \tuplet 3/2 { <c f a>8 <bf ef g> <af df f> }
    <af df f>4
    \clef "bass"
    <df, df'> <df, df'> |
  }

  % measure 32
  <<
    {
      \voiceTwo
      <df, df' af'>1
    }
    \\
    {
      \voiceOne
      r4 <b''' ef>4 <af df f>2
    }
  >> |

  % measure 33
  df2 ef,4 <ef, ef'> |

  % measure 34
  <df, df'>4 r r2 |

}

\layout {
  % \context {
  %   \Score
  %   \consists #(set-bars-per-line '(4))
  % }
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } {
    <<
      \new Staff = "upper" \upper_staff
      \new Staff = "lower" \lower_staff
    >>
  }
}
