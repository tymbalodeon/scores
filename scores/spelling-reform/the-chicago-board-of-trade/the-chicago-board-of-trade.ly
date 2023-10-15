\version "2.25.8"

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

    | cs,8 gs' as gs cs, gs' as gs
    | ds8 fs as fs ds fs as fs
    | cs8 gs' as gs cs, gs' as gs
    | <d fs as>1

    \repeat volta 2 {
      | <b fs' as as fs'>16 <b fs' as as fs'> <b fs' as as fs'> <b fs' as as fs'> <b fs' as as fs'>8 r r16 <b fs' as as fs'> <b fs' as as fs'> <b fs' as as fs'> <b fs' as as fs'> <b fs' as as ds> <b fs' as as ds> \xNote <b fs' as as ds>
      | <b f' b cs>16 <b f' b cs> <b f' b cs> <b f' b cs> <b f' b cs>8 r r16 <b f' b cs> <b f' b cs> <b f' b cs> <b f' b cs> <b f' b as> <b f' b as> \xNote <b f' b as>
      | <gs ds' fs as>16 <gs ds' fs as> <gs ds' fs as> <gs ds' fs as> <gs ds' fs as>8 r r16 <gs ds' fs as> <gs ds' fs as> <gs ds' fs as> <gs ds' fs as> <gs cs fs as> <gs cs fs as> \xNote <gs cs fs as>

      \alternative {
        \volta 1 {
          | <fs b d fs as>16 <fs b d fs as> <fs b d fs as> <fs b d fs as> <fs b d fs as>8 r r16 <fs b d fs as> <fs b d fs as> <fs b d fs as> r <gs as es'> <gs as es'> \xNote <gs as es'>
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

    \repeat volta 2 {
      | <b fs' as as fs'>16 <b fs' as as fs'> <b fs' as as fs'> <b fs' as as fs'> <b fs' as as fs'>8 r r16 <b fs' as as fs'> <b fs' as as fs'> <b fs' as as fs'> <b fs' as as fs'> <b fs' as as ds> <b fs' as as ds> \xNote <b fs' as as ds>
      | <b f' b cs>16 <b f' b cs> <b f' b cs> <b f' b cs> <b f' b cs>8 r r16 <b f' b cs> <b f' b cs> <b f' b cs> <b f' b cs> <b f' b as> <b f' b as> \xNote <b f' b as>
      | <gs ds' fs as>16 <gs ds' fs as> <gs ds' fs as> <gs ds' fs as> <gs ds' fs as>8 r r16 <gs ds' fs as> <gs ds' fs as> <gs ds' fs as> <gs ds' fs as> <gs cs fs as> <gs cs fs as> \xNote <gs cs fs as>

      \alternative {
        \volta 1 {
          | <fs b d fs as>16 <fs b d fs as> <fs b d fs as> <fs b d fs as> <fs b d fs as>8 r r16 <fs b d fs as> <fs b d fs as> <fs b d fs as> r <gs as es'> <gs as es'> \xNote <gs as es'>
        }

        \volta 2 {
          | <fs b d fs as>16 <fs b d fs as> <fs b d fs as> <fs b d fs as> <fs b d fs as>8 r16 <fs b d fs as> ~ <fs b d fs as> <fs b d fs as> <fs b d fs as>8 r16 <fs b d fs as> <fs b d fs as> \xNote <fs b d fs as>
        }
      }
    }

    | R1 * 8
    | R1 * 8

    \bar "|."
}

\score {
    \new Staff \with {
        instrumentName = "Guitar"
        \numericTimeSignature
    } {
        \compressMMRests
        \music
    }
}
