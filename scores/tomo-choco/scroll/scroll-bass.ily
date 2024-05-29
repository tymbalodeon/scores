\version "2.25.15"

chorus = \relative e, {
  | r2. r16 e fs8 \glissando

  | a4. e'8 ~ e ( fs8 ) a,16 -0 b' ( cs8 )
  | d,4. \4 b'8 ~ b ( cs8 ) d,16 -0 e' ( fs8 )
  | b,16 ( cs ) e cs ~ cs8 a16 ( b ) cs a8. fs16 b e,8
  | b'16 ( cs ) fs e ~ e8 a,16 ( b ) e cs8. b16 a fs8
  | b,16 b b b r8 b16 b b b r fs b fs b8
}

scrollBass = \relative e, {
  \key e \major
  \time 4/4
  \clef "bass"

  | R1
  | r2. r8 e16 ( fs )
  | ds'8 fs,16 cs' ~ cs fs, b8 r16 fs' fs8 ~ fs16 cs fs,8
  | R1
  | b16 b b b r8 b16 b b b r fs b fs b8

  | r2. r8 e,16 ( fs )
  | ds'8 fs,16 cs' ~ cs fs, b8 r16 fs' fs8 ~ fs16 cs fs,8
  | r2. r8 b \glissando
  | b'16 b b b r fs b16 b b b r fs b fs b,8 \glissando

  | fs4. a8 ~ a cs8 ~ cs16 e8.
  | b8. fs16 ~ fs8 b ~ b16 fs' fs8 ~ fs16 cs fs,8
  | a4. gs8 ~ gs fs4 e8

  | R1 * 3

  \tag #'album \pageBreak

  \chorus

  | r2. r8 e16 ( fs )
  | ds'8 fs,16 cs' ~ cs fs, b8 r16 fs' fs8 ~ fs16 cs fs,8
  | r2. r8 fs
  | b16 b b b r fs b16 b b b r fs b fs b8 \glissando

  | cs'4. \2 b8 ~ b ds,16 \4 ( e ) ds'16 cs e,, ( fs )
  | ds'8 fs,16 cs' ~ cs fs, b8 r16 fs' fs8 ~ fs16 cs fs,8 \glissando
  | cs''4. b8 ~ b16 a, -0 ds ( e ) ds'16 cs fs, ( gs )
  | b16 b b b r fs b16 b b b r fs b fs b, ( e, )

  | fs4. a8 ~ a cs8 ~ cs16 e8.
  | b8. fs16 ~ fs8 b ~ b16 fs' fs8 ~ fs16 cs fs,8
  | a4. cs8 ~ cs \glissando e4 \glissando e,8

  | R1 * 3
  \chorus

  | b'16 b b b r8 b16 b b b r fs b fs b8

  | r2. r8 e,
  | a4. gs8 ~ gs4 e
  | fs4. fs'8 ~ fs4 r8.

  % TODO: move middle voice rests with:
  % \once \override Voice.Rest.staff-position = #2

  <<
    {
      r16

      | e'8. -- e16 -. r8 cs8. -- cs16 -. r8 a8 -- r8
      | gs'8. -- b16 -- ~ b8 gs8 -- ~ gs16 b8. -- gs8 -- r8
      | e8. -- e16 -. r8 cs8. -- cs16 -. r8 a8 -- r8
      | gs'8. -- b16 -- ~ b8 gs8 -- ~ gs16 b8. -- gs8 -- r8

      | e8. -- e16 -. r8 cs8 -- r2
    } \\ {
      a,16 ~

      | a16 r a8 r16 a8 r16 a8 r16 a ~ a8 r16 a ~
      | a16 r a8 r16 a8 r16 a8 r16 a ~ a r8 a16 \laissezVibrer
      | a16 r a8 r16 a8 r16 a8 r16 a ~ a8 r16 a ~
      | a16 r a8 r16 a8 r16 a8 r16 a ~ a r8 a16 \laissezVibrer

      | a16 r a8 r16 a8 r16 a e fs gs \stemNeutral a b cs a
    }
    \\ {
      \voiceTwo
      s16

      | r16 cs'8 r16 s8 r16 a8 r16 s8 r16 fs -. s8
      | r16 e'8 r16 gs8 r16 e16 ~ e r gs8 r16 e -. s8
      | r16 cs8 r16 s8 r16 a8 r16 s8 r16 fs -. s8
      | r16 e'8 r16 gs8 r16 e16 ~ e r gs8 r16 e -. s8

      | r16 cs8 r16 s8 r16 a s2
    }
  >>

  | b,16 b b b r8 b16 b b b r fs b fs b8
  | r2. r8 e,16 ( fs )
  | ds'8 fs,16 cs' ~ cs fs, b8 r16 fs' fs8 ~ fs16 cs fs8 \glissando

  | cs''4. ^\markup \tiny "C♯" b8 ~ b fs b,4 \glissando
  | b,16 b b b r8 b16 b b b r fs b fs b8 \glissando
  | b'16 b b b r8 b16 b b b r fs b fs b8

  | a,4. gs8 ~ gs4 e
  | fs4. e8 ~ e4 e'

  | R1 * 3
  \chorus

  | r2. r8 e,16 ( fs )
  | ds'8 fs,16 cs' ~ cs fs, b8 r16 fs' fs8 ~ fs16 cs fs,8
  | R1
  | ds''16 ( e ) b' -- ds, ( e ) cs' -- ds, ( e ) b' -- ds, ( e ) cs' -- ds, b' fs e,, ->

  | fs1 -> ~
  | fs

  \bar "|."
}
