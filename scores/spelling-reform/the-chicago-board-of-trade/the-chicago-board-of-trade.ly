\version "2.25.9"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "The Chicago Board of Trade"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c'' {
  \key fs \major
  \time 4/4

  | R1 * 8 ^\markup \italic "(instrumental)"
  | R1 * 8 ^\markup \italic "(verse)"

  | cs,8\4-0 gs'\3-1 as\2-0 gs cs, gs' as gs
  | ds8\4-1 fs\3-0 as\ 2-0 fs ds fs as fs
  | cs8 gs' as gs cs, gs' as gs
  | <d fs as>1

  \repeat volta 2 {
    | <b fs' as as fs'>16 ^\markup \fret-diagram-terse "x;3;5;4;o;3;" <b fs' as as fs'> <b fs' as as fs'> <b fs' as as fs'> <b fs' as as fs'>8 r r16 <b fs' as as fs'> <b fs' as as fs'> <b fs' as as fs'> <b fs' as as fs'> <b fs' as as ds> ^\markup \fret-diagram-terse "x;3;5;4;o;o;" <b fs' as as ds> \xNote <b fs' as as ds>
    | <b f' b cs>16 ^\markup \fret-diagram-terse "x;3;4;5;3;x;" <b f' b cs> <b f' b cs> <b f' b cs> <b f' b cs>8 r r16 <b f' b cs> <b f' b cs> <b f' b cs> <b f' b cs> <b f' b as>  ^\markup \fret-diagram-terse "x;3;4;5;o;x;" <b f' b as> \xNote <b f' b as>
    | <gs ds' fs as>16 ^\markup \fret-diagram-terse "x;o;2;o;o;x;" <gs ds' fs as> <gs ds' fs as> <gs ds' fs as> <gs ds' fs as>8 r r16 <gs ds' fs as> <gs ds' fs as> <gs ds' fs as> <gs ds' fs as> <gs cs fs as> ^\markup \fret-diagram-terse "x;o;o;o;o;x;" <gs cs fs as> \xNote <gs cs fs as>

    \alternative {
      \volta 1 {
        | <fs b d fs as>16 ^\markup \fret-diagram-terse "3;3;1;o;o;x;" <fs b d fs as> <fs b d fs as> <fs b d fs as> <fs b d fs as>8 r r16 <fs b d fs as> <fs b d fs as> <fs b d fs as> r <gs as es' fs as> ^\markup \fret-diagram-terse "5;2;4;o;o;x;" <gs as es' fs as> \xNote <gs as es' fs as>
      }

      \volta 2 {
        | <fs b d fs as>16 <fs b d fs as> <fs b d fs as> <fs b d fs as> <fs b d fs as>8 r16 <fs b d fs as> ~ <fs b d fs as> <fs b d fs as> <fs b d fs as>8 r16 <fs b d fs as> <fs b d fs as> \xNote <fs b d fs as>
      }
    }
  }

  | R1 * 4 ^\markup \italic "(instrumental)"
  | R1 * 8 ^\markup \italic "(verse)"

  | cs'8 gs' as gs cs, gs' as gs
  | ds8 fs as fs ds fs as fs
  | cs8 gs' as gs cs, gs' as gs
  | <d fs as>1

  \repeat volta 4 {
    | <b fs' as as fs'>16 <b fs' as as fs'> <b fs' as as fs'> <b fs' as as fs'> <b fs' as as fs'>8 r r16 <b fs' as as fs'> <b fs' as as fs'> <b fs' as as fs'> <b fs' as as fs'> <b fs' as as ds> <b fs' as as ds> \xNote <b fs' as as ds>
    | <b f' b cs>16 <b f' b cs> <b f' b cs> <b f' b cs> <b f' b cs>8 r r16 <b f' b cs> <b f' b cs> <b f' b cs> <b f' b cs> <b f' b as> <b f' b as> \xNote <b f' b as>
    | <gs ds' fs as>16 <gs ds' fs as> <gs ds' fs as> <gs ds' fs as> <gs ds' fs as>8 r r16 <gs ds' fs as> <gs ds' fs as> <gs ds' fs as> <gs ds' fs as> <gs cs fs as> <gs cs fs as> \xNote <gs cs fs as>

    \alternative {
      \volta 1,3 {
        | <fs b d fs as>16 <fs b d fs as> <fs b d fs as> <fs b d fs as> <fs b d fs as>8 r r16 <fs b d fs as> <fs b d fs as> <fs b d fs as> r <gs as es'> <gs as es'> \xNote <gs as es'>
      }

      \volta 2,4 {
        | <fs b d fs as>16 <fs b d fs as> <fs b d fs as> <fs b d fs as> <fs b d fs as>8 r16 <fs b d fs as> ~ <fs b d fs as> <fs b d fs as> <fs b d fs as>8 r16 <fs b d fs as> <fs b d fs as> \xNote <fs b d fs as>
      }
    }
  }

  \repeat volta 2 {
    \ottava #-1
    | fs4. gs8 fs4. gs8
    | d4. gs8 d gs as fs
    | fs4. gs8 fs4. gs8

    \alternative {
      \volta 1 {
        | d4. gs8 d gs as fs
      }

      \volta 2 {
        | d1
      }
    }
  }

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = \markup {
      \center-column {
        "Guitar"
        \tiny {
          \line {
            D \tiny \sharp
            G \tiny \sharp
            C \tiny \sharp
          }
          \line {
            F \tiny \sharp
            A \tiny \sharp
            D \tiny \sharp
          }
        }
      }
    }
    \numericTimeSignature
  } {
    \compressMMRests
    \music
  }
}
