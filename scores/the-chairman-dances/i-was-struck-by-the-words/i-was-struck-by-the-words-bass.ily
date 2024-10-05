\version "2.25.17"

iWasStruckByTheWordsBass = \relative d {
  \key c \major
  \time 2/4

  \clef bass

  \partial 4.

  r8 r4

  | R2 * 2

  | r4 d16 c a f -> ~

  | f8 f'16 f, a c d f ~
  | f16 f d r c ( d ) f g, ~
  | g8 g'16 g, b d e g ~
  | g g e a, a' g e f, ~

  | f8 f'16 f, a c d f ~
  | f f d r c ( d ) f g, ~
  | g8 g'16 g, b d e g ~
  | g g e r d c a f ~

  | f8 f'16 f, a c d f ~
  | f f d r c ( d ) f g, ~
  | g8 g'16 g, b d e g ~
  | g g e a, a' g e d ~

  | d4 r16 a c d ~
  | d8 a'16 d, d'16 c a d, -> ~

  \mark \default

  | d8 d'16 -. r c, -> c' -. r b, -> ~
  | b8 b'16 -. e,, ( f e ) f -.  g -> ~
  | g8 g'16 -. r f, -> f' -. r e, -> ~
  | e8 e'16 -. e, ( g  a ) c -. d -> ~

  | d8 d'16 -. r c, -> c' -. r b, -> ~
  | b8 b'16 -. e,, ( f e ) f -.  g -> ~
  | g8 g'16 -. r f, -> f' -. r e -. ->
  | r16 e,16 f ( g ) a b ( c ) d -> ~

  | d8 d'16 -. r c, -> c' -. r b, -> ~
  | b8 b'16 -. e,, ( f e ) f -.  g -> ~
  | g8 g'16 -. r f, -> f' -. r e, -> ~
  | e8 e'16 -. e, ( g  a ) c -. d -> ~

  | d8 d'16 -. r c, -> c' -. r b, -> ~
  | b8 b'16 -. e,, ( f e ) f -.  g -> ~
  | g8 g'16 -. r f, -> f' -. r e -. ->
  | r8 r16 a, a' g e f, -> ~

  \mark \default

  | f8 f'16 f, a c d f ~
  | f f d r c ( d ) f g, ~
  | g8 g'16 g, b d e g ~
  | g g e r d c a f ~

  | f8 f'16 f, a c d f ~
  | f f d r c ( d ) f g, ~
  | g8 g'16 g, b d e g ~
  | g g e a, a' g e f, ~

  | f8 f'16 f, a c d f ~
  | f f d r c ( d ) f g, ~
  | g8 g'16 g, b d e g ~
  | g g e r d c a f ~

  | f8 f'16 f, a c d f ~
  | f f d r c ( d ) f g, ~
  | g8 g'16 g, b d e g ~
  | g g e a, a' g e d ~

  | d4 r16 a c d ~
  | d8 a'16 d, d'16 c a d, -> ~

  \mark \default

  | d8 d'16 -. r c, -> c' -. r b, -> ~
  | b8 b'16 -. e,, ( f e ) f -.  g -> ~
  | g8 g'16 -. r f, -> f' -. r e, -> ~
  | e8 e'16 -. e, ( g  a ) c -. d -> ~

  | d8 d'16 -. r c, -> c' -. r b, -> ~
  | b8 b'16 -. e,, ( f e ) f -.  g -> ~
  | g8 g'16 -. r f, -> f' -. r e -. ->
  | r16 e,16 f ( g ) a b ( c ) d -> ~

  | d16 d'32 d d16 -. c32 c c16 -. b -. b -. a -. ->
  | r16 f32 f f16 -. e32 e e16 -. d -. c -. g -. ->
  | r16 b32 b b16 -. c32 c c16 -. d -. f -. g -. ->
  | r16 b32 b b16 -. c32 c \acciaccatura d e16 -- g -- a -- d, -- -> ~

  | d16 d,32 d d16 -. c32 c c16 -. b -. b -. a -. ->
  | r16 f32 f f16 -. e32 e e16 -. f -. fs -. g -. ->
  | r16 b32 b b16 -. c32 c d16 -- f -- g -- g, -- -> ~
  | g2

  % \tag #'album { \pageBreak }


  | r2 r4 c16 ( d ) f g, -> ~

  \mark \default

  | g8 g'16 g, b d e g ~
  | g g e r d c a f ~

  | f8 f'16 f, a c d f ~
  | f16 f d r c ( d ) f g, ~
  | g8 g'16 g, b d e g ~
  | g g e a, a' g e f, ~

  | f8 f'16 f, a c d f ~
  | f16 f d r c ( d ) f g, ~
  | g8 g'16 g, b d e g ~
  | g g e r d c a f ~

  | f8 f'16 f, a c d f ~
  | f16 f d r c ( d ) f g, ~
  | g8 g'16 g, b d e g ~
  | g g e a, a' g e f ~

  \mark \default

  | f16 f c' c, a' b ( c ) f, ~
  | f16 f c' c, e' d c g ~
  | g16 g d' d, b' c ( d ) g, ~
  | g16 g b d a' g e f, ~

  | f16 f c' c, a' b ( c ) f, ~
  | f16 f c' c, e' d c g ~
  | g16 g d' d, b' c ( d ) g,
  | b16 d e ( g ) a e ( d ) c

  | f,16 f c' c, a' b ( c ) f, ~
  | f16 f c' c, e' d c g ~
  | g16 g d' d, b' c ( d ) g, ~
  | g16 a, c d ( e ) g a f ~

  | f16 f c' c, a' b ( c ) f, ~
  | f16 f c' c, e' d c g ~
  | g16 \> g d' d, b' c ( d ) g, ~
  | g16 \acciaccatura a32 b16 d e g a ( b ) c ~

  | c1 \!

  \bar "|."
}
