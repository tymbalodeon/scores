\include "helpers/string-number.ily"

voiceOne = \relative c'' {
  \repeat volta 2 {
    | r16 e8 ds d16 ~
    | d cs8 b a16 ~
    | a16 gs8 fs gs32 a
    | gs16 b32 a b16 gs32 fs gs16 e32 ds

    | e8 fs gs
    | a b cs
    | ds e16 ds cs b
    | e8 e, r

    | r16 gs'8 e cs16 ~
    | cs e32 ds e16 cs as fs ~
    | fs fs'8 ds b16 ~
    | b ds32 cs ds16 b gs e ~

    | e16 e'8 cs as16 ~
    | as gs'8 fs e16 ~
    | e ds8 cs b16
    | as16 e32 ds e16 as32 gs as16 b32 as

    | b16 ds, cs b' cs, as'
    | b8 r16 b ds fs
    | b8 r16 b fs ds
    | b fs ds b r8
  }

  \repeat volta 2 {
    | b8 cs ds
    | e fs gs
    | as b16 as gs fs
    | b8 b, r

    | r16 b''8 as a16 ~
    | a gs8 fs e16 ~
    | e ds8 cs ds32 e
    | ds16 fs32 e fs16 ds32 cs ds16 b32 as

    | b16 ds32 cs ds16 gs32 fss gs16 cs,32 b
    | cs16 e32 ds e16 as32 gs as16 ds,32 cs
    | ds16 gs32 fss gs16 b32 as b16 ds,32 css
    | ds16 as'32 gs as16 fss32 es fss16 ds32 css

    | ds16 a'!8 gs fs16 ~
    | fs e32 ds e16 cs32 bs cs16 e32 ds
    | e16 gs8 fs e16 ~
    | e ds32 cs ds16 b32 as b16 cs32 b

    | cs16 e8 ds cs16 ~
    | cs b32 as b16 gs32 fss gs16 a32 gs
    | a16 cs32 b cs16 a32 gs a16 e'32 ds
    | e16 fss,32 es fss16 as32 gs as16 b,32 as
    | b16 gs' e cs as fss'
    | gs ds b gs r8

    | e'8 fs gs
    | a b cs
    | ds e16 ds cs b
    | e8. b32 a b16 gs32 fs

    | gs16 e'8 ds d16 ~
    | d cs8 b a16 ~
    | a gs8 fs gs32 a
    | gs16 b32 a b16 gs32 fs gs16 e32 ds

    | e8 fs a
    | b ds fs
    | ds, e gs
    | a cs e

    | cs, fs a
    | b cs ds
    | e cs a
    | fs'4. ~

    | fs16 e ds cs b a
    | gs16 e32 ds e16 gs32 fs gs16 b32 a
    | b16 gs32 fs gs16 b32 a b16 e32 ds
    | e16 b gs e r8
  }
}

guitar = \voiceOne

guitar =
\addFingerings \voiceOne
#"
    4 3 2
    x 1 4 2
    x 1 4 1 2
    1 4 1 4 4 1 4 2 1

    2 4 1
    2 4 1
    3 4 2 1 4
    4 1

    1 1 3
    x 2 1 2 4 1 2
    x 1 2 3
    x 3 1 3 4 1 2

    x 4 1 3
    x 4 1 3
    x 2 1 4
    3 2 1 2 3 1 3 4 2

    4 1 2 3 2 1
    3  3 2 1
    1  1 1 2
    4 3 1 2


    2 4 1
    2 4 1
    3 4 2 1 4
    4 1

    4 3 2
    x 1 3 1
    x 1 4 1 2
    1 3 1 3 3 1 3 2 1

    2 3 1 3 3 2 3 3 1
    3 2 1 2 3 1 3 3 1
    3 4 2 4 2 1 2 3 2
    3 3 1 3 3 1 3 3 2

    3 4 2 1
    x 3 2 3 3 2 3 2 1
    2 3 1 3
    x 3 1 3 2 1 2 4 1

    4 2 1 4
    x 2 1 2 2 1 2 3 1
    2 3 1 3 2 1 2 4 2
    4 3 1 3 3 1 3 2 1
    2 1 2 4 1 1
    2 1 3 1

    2 4 1
    2 4 1
    3 4 2 1 4
    4 3 1 3 3 1

    3 4 3 2
    x 1 4 2
    x 1 4 1 2
    1 4 1 4 3 1 3 2 1

    2 4 1
    2 1 4
    1 2 1
    2 1 4

    2 3 1
    4 1 3
    4 1 2
    3

    x 4 3 1 4 2
    1 2 1 2 3 1 3 3 1
    3 3 1 3 3 1 3 4 2
    4 4 2 1
"

% guitar =
% \addStringNumbers \guitar
% #"
%     |  e8  -4 ds -3 d16 -2
%     | d cs8 -1 b  -4 a16 -2
%     | a16 gs8 -1 fs  -4 gs32  -1 a -2
%     | gs16 -1 b32 -4 a -1 b16 -4 gs32 -4 fs -1 gs16 -4 e32  -2 ds -1

%     | e8 -2 fs -4 gs \4 -1
%     | a -2 b -4 cs \3 -1
%     | ds -3 e16 -4 ds -2 cs -1 b \4 -4
%     | e8 \3 -4 e, \5 -1 r

%     | r16 gs'8 \2 -1 e \3 -1 cs16 \4 -3 ~
%     | cs e32 \3 -2 ds -1 e16 -2 cs \4 -4 as -1 fs \5 -2 ~
%     | fs fs'8 \2 -1 ds \3 -2 b16 \4 -3 ~
%     | b ds32 \3 -3 cs -1 ds16 -3 b \4 -4 gs -1 e \5 -2 ~

%     | e16 e'8 \3 -4 cs -1 as16 \4 -3 ~
%     | as gs'8 \2 -4 fs -1 e16 \3 -3 ~
%     | e ds8 -2 cs -1 b16 \4 -4
%     | as16 -3 e32 \5 -2 ds -1 e16 -2 as32 \5 -3 gs -1 as16 -3 b32 -4 as -2

%     | b16 -4 ds, \5 -1 cs \6 -2 b' \4 -3 cs, \6 -2 as' \4 -1
%     | b8 -3 r16 b -3 ds \3 -2 fs \2 -1
%     | b8 \1 -1 r16 b -1 fs \2 -1 ds \3 -2
%     | b \4 -4 fs \5 -3 ds -1 b \6 -2 r8


%     | b8 \6 -2 cs -4 ds \5 -1
%     | e -2 fs -4 gs \4 -1
%     | as -3 b16 -4 as -2 gs -1 fs \5 -4
%     | b8 \4 -4 b, \6 -1 r

%     | r16 b''8 \2 -4 as -3 a16 -2 ~
%     | a gs8 -1 fs \3 -3 e16 -1 ~
%     | e ds8 -1 cs \4 -4 ds32 \3 -1 e -2
%     | ds16 -1 fs32 -3 e -1 fs16 -3 ds32 -3 cs -1 ds16 -3 b32 \4 -2 as -1

%     | b16 -2 ds32 \3 -3 cs -1 ds16 -3 gs32 \2 -3 fss -2 gs16 -3 cs,32 \4 -3 b -1
%     | cs16 -3 e32 \3 -2 ds -1 e16 -2 as32 \2 -3 gs -1 as16 -3 ds,32 \3 -3 cs -1
%     | ds16 -3 gs32 \2 -4 fss -2 gs16 -4 b32 \1 -2 as -1 b16 -2 ds,32 \3 -3 css -2
%     | ds16 -3 as'32 \2 -3 gs -1 as16 -3 fss32 -3 es -1 fss16 -3 ds32 \3 -3 css -2

%     | ds16 -3 a'!8 \2 -4 gs -2 fs16 -1 ~
%     | fs e32 \3 -3 ds -2 e16 -3 cs32 \4 -3 bs -2 cs16 -3 e32 \3 -2 ds -1
%     | e16 -2 gs8 \2 -3 fs -1 e16 \3 -3 ~
%     | e ds32 -3 cs -1 ds16 -3 b32 \4 -2 as -1 b16 -2 cs32 -4 b -1

%     | cs16 -4 e8 \3 -2 ds -1 cs16 \4 -4 ~
%     | cs b32 -2 as -1 b16 -2 gs32 -2 fss -1 gs16 -2 a32 -3 gs -1
%     | a16 -2 cs32 \3 -3 b -1 cs16 -3 a32 \4 -2 gs -1 a16 -2 e'32 \3 -4 ds -2
%     | e16 -4 fss,32 \5 -3 es -1 fss16 -3 as32 \4 -3 gs -1 as16 -3 b,32 \6 -2 as -1
%     | b16 -2 gs' \4 -1 e \5 -2 cs \6 -4 as -1 fss' \4 -1
%     | gs -2 ds \5 -1 b \6 -3 gs -1 r8

%     | e'8 \5 -2 fs -4 gs \4 -1
%     | a -2 b -4 cs \3 -1
%     | ds -3 e16 -4 ds -2 cs -1 b \4 -4
%     | e8. \3 -4 b32 \4 -3 a -1 b16 -3 gs32 -3 fs -1

%     | gs16 -3 e'8 \3 -4 ds -3 d16 -2 ~
%     | d cs8 -1 b \4 -4 a16 -2 ~
%     | a gs8 -1 fs \5 -4 gs32 \4 -1 a -2
%     | gs16 -1 b32 -4 a -1 b16 -4 gs32 -3 fs -1 gs16 -3 e32 \5 -2 ds -1

%     | e8 -2 fs -4 a \4 -1
%     | b -2 ds \3 -1 fs -4
%     | ds, \5 -1 e -2 gs \4 -1
%     | a -2 cs \3 -1 e -4

%     | cs, \6 -2 fs \5 -3 a \4 -1
%     | b -4 cs \3 -1 ds -3
%     | e -4 cs -1 a \4 -2
%     | fs'4. \2 -3 ~

%     | fs16 e \3 -4 ds -3 cs -1 b \4 -4 a -2
%     | gs16 -1 e32 \5 -2 ds -1 e16 -2 gs32 \4 -3 fs -1 gs16 -3 b32 -3 a -1
%     | b16 -3 gs32 -3 fs -1 gs16 -3 b32 -3 a -1 b16 -3 e32 \3 -4 ds -2
%     | e16 -4 b \4 -4 gs -2 e \5 -1 r8
% "
