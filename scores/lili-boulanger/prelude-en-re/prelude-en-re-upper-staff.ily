\version "2.25.24"
\include "helpers/fake-clef-treble.ily"
\include "helpers/fake-clef-bass.ily"

upper_staff = \relative c' {
  \key df \major
  \clef "treble"

  % measure 1
  r4 <ef f>2 ^( <ef g>4 |

  % measure 2
  <ef f a>4 <ef f bf>2 ) r4 |

  % measure 3
  r4

  << {
    <ef f>2 ( <ef g>4 |

    % measure 4
    a8 c bf ) f' ~ f4
  } \\ {
    s2. |

    % measure 4
    <ef, f>4 <ef f>8 r r4
  } >>
  << {
    a8 ( c |

    % measure 5
    bf8 ) f'4. ~ f8 f, r4
  } \\ {
    <ef f>4 |

    % measure 5
    <ef f>4 r r <a ef a,>
  } >>

  << {
    % measure 6
    r8 f' ( af2.~ |

    % measure 7
    af8 gf f ef ef df ) r4 |

    % measure 8
    r8 f ( bf4~ bf8 f a f ) |
  } \\ {
    % measure 6
    <bf,, f' bf>4 r r <a ef' a> |

    % measure 7
    <bf' f bf,> r r <a ef a,> |

    % measure 8
    <bf f bf,> r r <f' df a> |
  } >>

  % measure 9
  << {
    r8
    f' ( af4 ~ af8 gf f ef |

    % measure 10
    ef8 [ df ] )
  } \\ {
    <bf, f' bf>4 r r <f' a df> |

    % measure 10
    <ef bf'>4
  } >>

  r4 r8 f,4 ( f8 |

  % measure 11
  f' f,4 f8 f' f, <ef' f> f, |

  % measure 12
  <f' g> [ <ef g, f> ] <f g> <ef g, f>4 <ef g, f>8 <f g> [ <ef g, f> ] |

  % measure 13
  <a ef> <f a,> <cf' ef,> <f, a,> ) r

  << {
    s4.

    % measure 14
    r8 f' (
    \halfBracket #2 #3 #0.7
    af4 ~ af8 gf f ef |

    % measure 15
    ef df )
  } \\ {

    <ef, a,>8 ( <a f> <ef a,>
    % measure 14
    <bf' f>8 <f af,>
    \halfBracket #5.1 #-4 #0.7
    <bf f> <f af,> ) r <bf ef,> ( <a f> <f a,> |

    % measure 15
    <bf f>8 <ef, af,!> )
  } >>

  r <ef af,> ( <bf' f> <ef, af,> <bf' f> <ef, af,> |

  % measure 16
  <f ef cf g>8 <ef g,> <f cf> <ef g,> ) r <ef g,> ( <f cf> <ef g,> |

  % measure 17
  \time 3/4
  <g ds cs f,>8 <b, ds> <g' cs,> <ds a> <g cs, b> <ds cs f,> |

  % measure 18
  <a' f ef>8 <ef gf, f>4 <ef gf, f>8 <a f ef> [ <cs, gf f> ] ) |

  % measure 19
  \time 4/4
  <f f,>8. ( <cs a>16 ) <f f,>8. ( <cs a>16 )
  \stemUp
  <f df g, f>8 ^( <df bf> <f df g, f> <df bf> ) |
  \stemNeutral

  % measure 20
  <f f,>8. ( <cs a>16 ) <f f,>8. ( <cs a>16 )
  \stemUp
  \tuplet 5/4 {
    <f df g, f>8 ^( <df bf> <f df g, f> <df bf> <f df g, f> )
  } |
  \stemNeutral

  % measures 21-22
  \time 3/4
  <d d,>16. ( <af bf>32 <ef ef'>16. <af bf>32 <f f'>16. <af bf>32 )
  r16. <af bf>32 ^( <c c,>16. <af bf>32 <df df,>16. <af bf>32 ) |
  <d d,>16. ( <af bf>32 <ef ef'>16. <af bf>32 <f f'>16. <af bf>32 )
  r16. <af bf>32 ( <c c,>16. <af bf>32 <df df,>16. <af bf>32 ) |

  % measure 23
  \time 4/4
  \ottava #1
  <af''' af,>8 ( <g g,> <f f,> <ef ef,> <cs cs,> <b b,> <a a,> <g g,> |
  \ottava #0

  % measures 24
  <f f,> <ef ef,> <cs cs,> <b b,> <a a,> <g g,> <f f,> <ef ef,> |

  % measuress 25-26
  <cs cs,> <b b,> <a a,> <g g,> ~ <g g,> <f f,>4 <ef ef,>8 ) |
  <cs' cs,> ^( <b b,> <a a,> <g g,> ~ <g g,> <f f,>4 <ef ef,>8 ) |

  % measure 27
  \showStaffSwitch
  \change Staff = "lower"
  % <cs'' cs,>8 <b b,> <a a,> <g g,> ~ <g g,> <f f,>4 <ef ef,>8 |
  <as' as,>8 ( <g g,> <f! f,!> <e e,> ~ <e e,> <df df,>4 <c c,>8 ) |
  \hideStaffSwitch

  % measures 28-31
  \change Staff = "upper"
  \repeat unfold 2 {
    <ef' ef'>4
    <ef,, ef'> <ef' ef'>
    <ef' ef'>

    <ef,, ef'> <ef' ef'> <ef, ef'> <ef' ef'> |
  }

  % measure 32
  <ef' ef'>
  <a,, ef' a>2 <bf f' bf>4 |

  % measure 33
  << {
    <ef' ef'>4
    <ef, ef'> <ef, ef'>
    ef
  } \\ {
    ef'4
    ef,
  } >> |

  % measure 34
  R1 |

  \bar "|."
}
