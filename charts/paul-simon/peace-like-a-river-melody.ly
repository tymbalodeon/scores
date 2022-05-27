riff = \new CueVoice {
  \relative c' {
    \repeat volta 3 {
      d4. d'4. c4 d8~ d4 d,8 |
      d'4 c8~ c4 f,8~ f4. r |
    }
  }
}

verse = \relative c'' {
  \repeat volta 2 {
    d1.~ | d | d4. c4 a8 c4 a8~ a4 g8~ |
    g4. f4 d8 f4 d8~ d4. |
    R1. * 2|

    f'4. f4 f8 f4 e8~ e4 d8~ |
    d4 c8~ c4 bf8~ bf4 a8~ a4 g8~ |
    g4 a8 f4. r2. |

    r r4. a |
    g4 f8 a4. f4 f8 f4 g8~ |
    g a f~ f4. r2. |
  }
}

melody = {
  \riff
  \verse
}
