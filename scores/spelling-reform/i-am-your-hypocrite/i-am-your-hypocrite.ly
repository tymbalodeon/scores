\version "2.25.19"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "I Am Your Hypocrite"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
}

music = \relative g'' {
    \key g \major

    | r4 g2 g4 ~
    | g2 g ~
    | g4 g2.
    | g2. g4 ~

    \sectionLabel Verse

    | g2 g ~
    | g4 g2.
    | g2. g4 ~
    | g2 g ~

    | g4 g2.
    | g2. g4 ~
    | g2 g ~
    | g4 g2.

    | g2. g4 ~
    | g2 g ~
    | g4 g2.
    | g2. g4 ~

    | g2 g ~
    | g4 g2.
    | g2. g4 ~
    | g2 g ~

    \sectionLabel Instrumental

    | g2 g ~
    | g4 g2.
    | g2. g4 ~
    | g2 g ~

    | g4 g2.
    | g2. g4 ~
    | g2 g ~
    | g4 g2.

    | R1 * 16

    \key e \major
    \bar "||"

    | R1

    \time 2/4

    | R2

    \time 4/4

    | R1 * 2
    | R1 * 7

    \key cs \major
    \bar "||"

    | cs,,4. ds8 ~ ds4 es
    | b4. fs'8 ~ fs4 es
    | cs4. bs?8 ~ bs4 cs
    | ds4. es8 ~ es2
    
    | cs4. ds8 ~ ds4 es
    | b4. fs'8 ~ fs4 es
    | cs4. bs?8 ~ bs4 cs
    | ds4. es8 ~ es4 gs

    | cs,4. ds8 ~ ds4 es
    | b4. fs'8 ~ fs4 es
    | cs4. bs?8 ~ bs4 cs
    | ds4. es8 ~ es2

    \key e \major
    \bar "||"

    | cs1 ~
    | cs1
    | e,1 ~
    | e1

    \key g \major
    \bar "||"

    | R1 * 16
    | R1 * 7

    \key cs \major
    \bar "||"

    | cs'4. ds8 ~ ds4 es
    | b4. fs'8 ~ fs4 es
    | cs4. bs?8 ~ bs4 cs
    | ds4. es8 ~ es2
    
    | cs4. ds8 ~ ds4 es
    | b4. fs'8 ~ fs4 es
    | cs4. bs?8 ~ bs4 cs
    | ds4. es8 ~ es4 gs

    | cs,4. ds8 ~ ds4 es
    | b4. fs'8 ~ fs4 es
    | cs4. bs?8 ~ bs4 cs
    | ds4. es8 ~ es2

    | cs4. ds8 ~ ds4 es
    | b4. fs'8 ~ fs4 es
    | cs4. bs?8 ~ bs4 cs
    | ds4. es8 ~ es2

    \key e \major
    \bar "||"

    | cs1 ~
    | cs1
    | e,1 ~
    | e1 \fermata

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
