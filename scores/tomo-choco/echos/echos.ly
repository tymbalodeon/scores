\version "2.25.13"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Echos"
  subtitle = "Tomo Choco"
  composer = "Ashley Cubbler"
  arranger = "Ben Rosen, bass"
}

music = \relative fs, {
  \key e \major
  \time 4/4
  \clef "bass"

  | fs4 r8 fs' ~ fs4 cs8 fs
  | b,4 r8 \appoggiatura fs'16 gs8 ~ gs4 fs
  | fs,4 r8 fs' ~ fs4 cs8 fs
  | b,4 fs'8 a, ds e ( fs4 )

  | fs,4 r8 fs' ~ fs4 cs8 fs
  | b,4 r8 \appoggiatura fs'16 gs8 ~ gs4 fs8 ( gs )
  | b4. -- a8 -- ~ a4 gs4 -- ~
  | gs8 fs4. -- e4 -. -> ds -- -> \glissando

  \once\override NoteColumn.glissando-skip = ##t

  | \parenthesize r4. fs,8 -> ~ fs4 fs \glissando
  | b1
  | fs4 r8 fs' ~ fs4 fs, \glissando
  | b1

  | fs4 r8 fs' ~ fs4 fs, \glissando
  | b4 r8 ds ~ ds4 fs8 ( gs )
  | b4. -- a8 -- ~ a2
  | gs4. -- fs8 -- ~ fs4 e4

  | e'8 -> ds cs b -> ~ b e, ( fs ) b
  | a8 -> gs fs e -> ~ e e, ( fs ) a
  | b2. b4 \glissando

  | cs'2. b,4 \glissando
  | ds'2. b,4 \glissando
  | fs''1

  | fs,,4 r8 fs' ~ fs4 fs,
  | b4 r8 \appoggiatura fs'16 gs8 ~ gs fs4 cs8
  | fs,4 r8 fs' ~ fs4 cs8 fs
  | b,4 fs'8 << { r gs a ( b4 ) } \\ { a,8 ~ a2 } >>

  | fs4 r8 fs' ~ fs4 cs8 fs
  | b,4 e,8 ( fs ) a b ( cs ) e
  | fs,4 r8 fs' ~ fs fs cs fs
  | r8 b -> r b -> ~ b fs b fs \glissando

  | cs'8 -> cs cs b -> b e, ( fs ) b
  | a8 -> a a gs -> gs fs e e,

  | fs4 r8 fs' ~ fs4 cs8 fs
  | r8 b, -> r b -> ~ b4 r
  | fs4 r8 fs' ~ fs4 cs8 fs
  | r8 b, -> r b -> ~ b b -> ( cs4 ) \glissando

  | e,4. -> e'8 ~ e4 \glissando fs, \glissando
  | b4. -> b'8 ~ b4 b,
  | a4. a'8 ~ a b ( cs4 )
  | gs4. -- fs8 -- ~ fs4 e

  | a,4. -- gs8 -- ~ gs4 fs \glissando
  | b4. -- ds8 -- ~ ds4 fs \glissando
  | fs'1 ~
  | fs2. b,4 \glissando

  | b,1 ~
  | b1

  | R1 * 4

  | b'4. -- a8 -- ~ a2
  | gs4. -- fs8 -- ~ fs4 e4 \glissando

  \once\override NoteColumn.glissando-skip = ##t

  | \parenthesize r4. fs,8 -> ~ fs2 \glissando
  | b2. r4
  | fs4. -- fs'8 -- ~ fs4 fs, \glissando
  | b2. r4

  | fs4. -- fs'8 -- ~ fs4 fs, \glissando
  | b4. -- ds8 -- ~ ds4 fs8 ( gs )
  | b4. -- a8 -- ~ a2
  | gs4. -- fs8 -- ~ fs4 e4 \glissando

  | b''4. -- ^\markup \tiny "B" a8 -- ~ a2
  | gs4. -- fs8 -- ~ fs4 cs4 \glissando

  | a,1
  | fs1
  | e2. b'4 \glissando
  | e4. fs8 ~ fs4 gs

  | a,1
  | fs1
  | e2. b'4 \glissando
  | e4. b'8 ~ b b ( cs4 ) \glissando

  | a,1
  | fs1
  | e2. b'4 \glissando
  | e4. -- ds8 -- ~ ds4 cs8 b ~

  | b1
  | r2. r8

  <<
    {
      s8

      \repeat volta 3 {
        | b''8 ^\markup \tiny "B" a gs fs -. r gs e4
        | b'8 a gs fs -. r e ( ds ) r
        | fs8 e ds cs -. r ds b r

        \alternative {
          \volta 1,2 {
            | fs'8 e ds cs -. r a ( gs ) r
          }

          \volta 3 {
            | fs'8 e ds cs b a ( gs ) r

            \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)

            | b8 a gs fs -. r gs e r
            | b'8 a gs fs -. r e ( ds ) r
            | fs8 e ds cs -. r ds b r
          }
        }
      }
    } \\ {
      a8 ~

      \repeat volta 3 {
        | a4. r8 r4. a8 ~
        | a4. r8 r4. fs'8 ~
        | fs8 r r4 r4. fs8 ~

        \alternative {
          \volta 1,2 {
            | fs8 r4. r a,8 \laissezVibrer
          }

          \volta 3 {
            | fs'8 \repeatTie r r4 r4. a,8 ~
            | a4. r8 r4. a8 ~
            | a4. r8 r4. fs8 ~
            | fs8 r r4 r4. e8
          }
        }
      }
    }
  >>

  | fs8 gs a b cs e ( fs ) b,

  | a1
  | gs2. e4
  | fs1 \glissando
  | e'4 -- b' -- gs -- e --

  | b1
  | r2. b4 \glissando

  | b'4. -- a8 -- ~ a4 gs4 -- ~
  | gs8 fs4. -- e4 -. -> ds -. ->

  | fs,8 fs'4. -> ~ fs2

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \compressMMRests
    \music
  }
}
