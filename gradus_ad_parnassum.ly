%{
  Gradus ad Parnassum
%}
\version "2.18.2"
\pointAndClickOff

exerciseStaff =
#(define-music-function
   (parser location up down)
   (ly:music? ly:music?)
   #{
    \new StaffGroup <<
      \new Staff = "up" <<
	#up
      >>
      \new Staff = "down" <<
	#down
      >>
    >>
    #}
)

DorianCFi = \new Voice  {
  \relative c' {
    \set Staff.instrumentName = #"c.f."
    \set Score.tempoHideNote = ##t
    \tempo 4 = 180
    \clef "treble"
    \time 4/4
    d1 | f1 | e1 | d1 |
    g1 | f1 | a1 | g1 |
    f1 | e1 |  d1\bar "||"
  }
}

firstDorianCPi = \new Voice {
  \relative c'' {
    \clef "treble"
    a1 | a1 | c1 | b1 |
    b1 | d1 | c1 | e1 | 
    d1 | cis1 |  d1 \bar "||"
  }
}

firstDorianCPii = \new Voice {
  \relative c {
    \clef "treble_8"
    d1 | d1 | g1 | f1 |
    e1 | a1 | f1 | c'1 |
    d1 | cis1 | d1 \bar "||"
  }
}

PhrygianCFi = \new Voice {
  \relative c' {
    \set Staff.instrumentName = #"c.f."
    \set Score.tempoHideNote = ##t
    \tempo 4 = 220
    \clef "treble"
    e1 | c1 | d1 | c1 |
    a1 | a'1 | g1 | e1 |
    f1 | e1  \bar "||"
  }
}

firstPhrygianCPi = \new Voice {
  \relative c' {
    \clef "treble"
    e1 | g1 | f1 | a1 |
    c1 | c1 | b1 | c1 |
    d1 | e1  \bar "||"
  }
}

firstPhrygianCPii = \new Voice {
  \relative c {
    \clef "treble_8"
    e1 | a1 | b1 | e1 |
    e1 | c1 | b1 | c1 |
    d1 | e1  \bar "||"
  }
}

LydianCFi = \new Voice {
  \relative c {
    \set Staff.instrumentName = #"c.f."
    \set Score.tempoHideNote = ##t
    \clef "treble_8"
    \tempo 4 = 320
    f1 | g1 | a1 | f1 |
    d1 | e1 | f1 | c'1 |
    a1 | f1 | g1 | f1  \bar "||"
  }
}

firstLydianCPi = \new Voice {
  \relative c' {
    \clef "treble"
    f1 | e1 | f1 | a1 |
    b1 | g1 | a1 | a1 |
    f1 | d1 | e1 | f1  \bar "||"
  }
}

firstLydianCPii = \new Voice {
  \relative c {
    \clef "bass"
    f1 | e1 | c1 | a1 |
    b1 | c1 | a1 | a1 |
    c1 | d1 | e1 | f1  \bar "||"
  }
}

MixolydianCFi = \new Voice {
  \relative c' {
    \set Staff.instrumentName = #"c.f."
    \set Score.tempoHideNote = ##t
    \tempo 4 = 240
    \clef "treble"
    g1 | c1 | b1 | g1 |
    c1 | e1 | d1 | g1 |
    e1 | c1 | d1 | b1 |
    a1 | g1  \bar "||"
  }
}

firstGDurCPi = \new Voice {
  \relative c'' {
    \clef "treble"
    g1 | g1 | g1 | b1 |
    a1 | c1 | b1 | b1 |
    b1 | a1 | a1 | g1 |
    fis1 | g1  \bar "||"
  }
}

firstMixolydianCPii = \new Voice {
  \relative c' {
    \clef "bass"
    g1 | e1 | d1 | b'1 |
    a1 | g1 | f1 | e1 |
    c1 | e1 | f1 | g1 |
    fis1 | g1  \bar "||"
  }
}

AeolianCFi = \new Voice {
  \relative c' {
    \set Staff.instrumentName = #"c.f."
    \set Score.tempoHideNote = ##t
    \clef "treble"
    \tempo 4 = 320
    a1 | c1 | b1 | d1 |
    c1 | e1 | f1 | e1 |
    d1 | c1 | b1 | a1  \bar "||"
  }
}

firstAeolianCPi = \new Voice {
  \relative c' {
    \clef "treble"
    e1 | e1 | g1 | f1 |
    a1 | g1 | a1 | c1 |
    b1 | e,1 | gis1 | a1  \bar "||"
  }
}

firstAeolianCPii = \new Voice {
  \relative c' {
    \clef "bass"
    a1 | e1 | g1 | f1 |
    e1 | c1 | b1 | c1 |
    d1 | a'1 | gis1 | a1  \bar "||"
  }
}

IonianCFi = \new Voice {
  \relative c' {
    \set Staff.instrumentName = #"c.f."
    \set Score.tempoHideNote = ##t
    \tempo 4 = 240
    \clef "treble"
    c1 | e1 | f1 | g1 |
    e1 | a1 | g1 | e1 |
    f1 | e1 | d1 | c1 \bar "||"
  }
}

firstIonianCPi = \new Voice {
  \relative c'' {
    \clef "treble"
    c1 | c1 | d1 | b1 |
    c1 | c1 | b1 | c1 |
    a1 | c1 | b1 | c1 \bar "||"
  }
}

firstIonianCPii = \new Voice {
  \relative c' {
    \clef "treble_8"
    c1 | g1 | f1 | e1 |
    g1 | c1 | c1 | g1 |
    a1 | c1 | b1 | c1 \bar "||"
  }
}
secondDorianCPi = \new Voice {
 \relative c'' {
   \clef "treble"
   a2 f2 | a2 b2 |
   c2 g2 | d'2 c2 |
   b2 c2 | d2 e2 |
   f2 c2 | b2 e2 |
   d2 a2 | b2 cis2 |
   d1 \bar "||"
 }
}
secondDorianCPii = \new Voice {
  \relative c' {
    \clef "treble_8"
    r2 d2 | d2 a2 |
    g2 a2 | f2 b2 |
    b2 c2 | d2 a2 |
    c2 d2 | e2 c2 |
    d2 a2 | a2 cis2 |
    d1 \bar "||"
  }
}

secondPhrygianCPi = \new Voice {
  \relative c'' {
    \clef "treble"
    r2 e2 | e2 a,2 |
    b2 f2 | a2 e2 |
    f2 e2 | c2 d2 |
    e2 f2 | g2 c2 |
    c2 d2 | e1 \bar "||"
  }
}
secondPhrygianCPii = \new Voice {
  \relative c' {
    \clef "treble_8"
    r2 e2 | e,2 f2 |
    f2 g2 | a2 b2 |
    c2 f2 | f2 c2 |
    b2 a2 | g2 c2 |
    a2 d2 | e1 \bar "||"
  }
}
secondLydianCPi = \new Voice {
  \relative c' {
    \clef "treble"
    f2 e2 | d2 e2 | 
    f2 g2 a2 g2 |
    f2 a2 | g2 c,2 |
    c2 b2 | a2 e'2 |
    f2 g2 | a2 f2 |
    d2 e2 | f1 \bar "||"
  }
}
secondLydianCPii = \new Voice {
  \relative c {
    \clef "bass"
    r2 f2 | e2 d2 |
    c2 f2 | a2 c2 |
    b2 a2 | g2 c,2 |
    d2 b2 | a2 b2 |
    c2 f2 | a2 d,2 |
    c2 e2 | f1 \bar "||"
  }
}
secondMixolydianCPi = \new Voice {
  \relative c' {
    \clef "treble"
    r2 d2 | e2 f2 |
    g2 a2 | b2 a2 | 
    g2 f2 | e2 g2 |
    b2 a2 | e'2 d2 |
    c2 b2 | a2 g2 |
    f2 e2 | g2 d2 |
    e2 fis2 | g1 \bar "||"
  }
}
secondMixolydianCPii = \new Voice {
  \relative c' {
    \clef "bass"
    r2 g2 | e2 f2 |
    g2 d2 | e2 b2 |
    a2 e'2 | c2 a2 |
    b2 a2 | g2 b2 |
    c2 d2 | e2 a,2 |
    b2 a2 | g2 b2 |
    d2 fis2 | g1 \bar "||"
  }
}
secondAeolianCPi = \new Voice {
  \relative c'' {
    \clef "treble"
    r2 a2 | g2 a2 |
    d2 c2 | b2 a2 | 
    a2 b2 | c2 b2 |
    a2 b2 | c2 g2 |
    a2 b2 | a2 e2 |
    fis2 gis2 | a1 \bar "||"
  }
}
secondAeolianCPii = \new Voice {
  \relative c' {
    \clef "bass"
    r2 a2 | f2 e2 |
    d2 e2 | f2 d2 |
    f2 a2 | g2 e2 |
    d2 a2 | c2 e2 |
    f2 f,2 | a2 c2 |
    e2 gis2 | a1 \bar "||"
  }
}
secondIonianCPi = \new Voice {
  \relative c'' {
    \clef "treble"
    r2 c2 | g2 c2 |
    d2 c2 | b2 e2 |
    c2 g'2 | f2 e2 |
    e2 d2 | c2 b2 |
    a2 b2 | c2 g2 |
    a2 b2 | c1 \bar "||"
  }
}
secondIonianCPii = \new Voice {
  \relative c' {
    \clef "treble_8"
    r2 c2 | c,2 c'2 |
    a2 d2 | c2 g2 |
    a2 b2 | c2 d2 |
    e2 b2 | g2 a2 |
    a2 b2 | c2 c,2 |
    g'2 b2 | c1 \bar "||"
  }
}
thirdDorianCPi = \new Voice {
  \relative c'' {
    \clef "treble"
    d4 c4 a4 b4 |
    a4 d4 e4 f4 |
    g4 c,4 d4 e4 |
    f4 e4 d4 c4 |
    b4 c4 e4 d4 |
    d4 a4 bes4 c4 |
    c4 d4 f4 e4 |
    e4 d4 c4 b4 |
    a4 bes4 d4 c4 |
    g4 a4 b4 cis4 |
    d1 \bar "||"
  }
}
thirdDorianCPii = \new Voice {
  \relative c' {
    \clef "treble_8"
    r4 d4 bes4 g4 |
    f4 g4 a4 b4 |
    c4 a4 g4 a4 |
    b4 a4 g4 f4 |
    e4 g4 a4 b4 |
    d4 bes4 a4 f4 |
    d4 f4 g4 a4 |
    bes4 e4 d4 c4 | 
    d4 f4 e4 d4 |
    cis4 a4 b4 cis4 |
    d1 \bar "||"
  }
}
thirdPhrygianCPi = \new Voice {
  \relative c'' {
    \clef "treble"
    r4 b4 b4 g4 |
    e4 f4 g4 a4 |
    b4 b4 c4 d4 |
    e4 c4 d4 e4 |
    f4 e4 c4 e4 |
    e4 c4 d4 e4 |
    b4 c4 e4 d4 |
    c4 g4 c4 g'4 |
    f4 e4 c4 d4 |
    e1 \bar "||"
  }
}
thirdPhrygianCPii = \new Voice {
  \relative c' {
    \clef "treble_8"
    r4 e4 e,4 g4 |
    a4 f4 g4 a4 |
    bes4 a4 f4 g4 |
    e4 f4 a4 c4 |
    f4 e4 c4 a4 |
    f4 g4 a4 b4 |
    c4 g4 a4 b4 |
    c4 b4 g4 c4 |
    d4 bes4 c4 d4 |
    e1 \bar "||"
  }
}
thirdLydianCPi = \new Voice {
  \relative c'' {
    \clef "treble"
    r4 f4 e d |
    e4 d c b |
    c d e c |
    d c b a |
    b a f a |
    g a b c |
    d c a c |
    e g f e |
    f e d c |
    d c bes a |
    bes c d e |
    f1 \bar "||"
  }
}
thirdLydianCPii = \new Voice {
  \relative c' {
    \clef "treble_8"
    r4 f4 d a |
    bes c d e |
    f e c d |
    a a b c |
    b a g f |
    g a c a |
    d f, a c |
    a c e f |
    f e d c |
    a bes c d |
    e c d e |
    f1 \bar "||"
  }
}
thirdMixolydianCPi = \new Voice {
  \relative c' {
    \clef "treble"
    r4 d g b |
    e e, g c |
    d b g d |
    e e' d e |
    a, b c d |
    c b a g |
    f g a b |
    b c d e |
    g e c g |
    e g c e |
    f d b f |
    d g b d, |
    c d e fis |
    g1 \bar "||"
  }
}
thirdMixolydianCPii = \new Voice {
  \relative c' {
    \clef "bass"
    r4 g f e |
    e c a c |
    d b g b |
    c g b e |
    a a, c e |
    g c, d e |
    f g, a b |
    d e f g |
    a g c, a |
    e' c a f |
    b c d e |
    e g e b |
    c d e fis |
    g1 \bar "||"
  }
}
thirdAeolianCPi = \new Voice {
  \relative c'' {
    \clef "treble"
    r4 a g f |
    e e' d c |
    d c b a |
    b a g f |
    e g a b |
    c b a g |
    a c bes a |
    g c b g |
    a d c b |
    a g f e |
    d e fis gis |
    a1 \bar "||"
  }
}
thirdAeolianCPii = \new Voice {
  \relative c' {
    \clef "bass"
    r4 a g f |
    e a, c e |
    g c, e g |
    f b a g |
    a e g a |
    g e c a |
    d g, a b |
    c d e f |
    g f d e |
    e a, b c |
    d e fis gis |
    a1 \bar "||"
  }
}
thirdIonianCPi = \new Voice {
  \relative c'' {
    \clef "treble"
    r4 g a b |
    c d e c |
    d c b a |
    b d g e |
    c c e c |
    c d f e |
    e d c b |
    c b a g |
    a f g a |
    g c, d e |
    f g a b |
    c1 \bar "||"
  }
}
thirdIonianCPii = \new Voice {
  \relative c' {
    \clef "treble_8"
    r4 c b a |
    g c b c |
    d c b a |
    b c d e |
    gis, a b c |
    f, g a b |
    c b c g |
    g c c g |
    a d c b |
    c g a b |
    b g a b |
    c1 \bar "||"
  }
}
fourthDorianCPi = \new Voice {
  \relative c'' {
    \clef "treble"
    r2 d2~ |
    d2 a2~ |
    a2 g2 |
    a2 b2~ |
    b2 d2~ |
    d2 c2~ |
    c2 f2~ |
    f2 e2~ |
    e2 d2~ |
    d2 cis2 |
    d1 \bar "||"
  }
}
fourthDorianCPii = \new Voice {
  \relative c' {
    \clef "treble_8"
    r2 d2~ |
    d2 a2~ |
    a2 c2~ |
    c2 b2~ |
    b2 e2~ |
    e2 d2~ |
    d2 f2~ |
    f2 e2~ |
    e2 d2~ |
    d2 cis2 |
    d1 \bar "||"
  }
}
fourthPhrygianCPi = \new Voice {
  \relative c'' {
    \clef "treble"
    r2 b2~ |
    b2 a2~ |
    a2 f2~ |
    f2 e2~ |
    e2 e'2~ |
    e2 c2~ |
    c2 b2~ |
    b2 e2~ |
    e2 d2 |
    e1 \bar "||"
  }
}
fourthPhrygianCPii = \new Voice {
  \relative c' {
    \clef "treble_8"
    r2 e2~ |
    e2 a,2~ |
    a2 g2~ |
    g2 f2~ |
    f2 f'2~ |
    f2 e2~ |
    e2 c2~ |
    c2 e2~ |
    e2 d2 |
    e1 \bar "||"
  }
}
fourthLydianCPi = \new Voice {
  \relative c'' {
    \clef "treble"
    r2 f2~ |
    f2 e2~ |
    e2 c2~ |
    c2 d2~ |
    d2 b2~ |
    b2 e2~ |
    e2 d2~ |
    d2 c2~ |
    c2 d2~ |
    d2 f2~ |
    f2 e2 |
    f1 \bar "||"
  }
}
fourthLydianCPii = \new Voice {
  \relative c' {
    \clef "treble_8"
    r2 f2~ |
    f2 e2~ |
    e2 d2~ |
    d2 a2~ |
    a2 g2~ |
    g2 c2~ |
    c2 bes2~ |
    bes2 a~ |
    a2 c2 |
    c f~ |
    f e |
    f1 \bar "||"
  }
}
fourthMixolydianCPi = \new Voice {
  \relative c'' {
    \clef "treble"
    r2 g~ |
    g a~ |
    a g~ |
    g b~ |
    b a~ |
    a g~ |
    g f~ |
    f e~ |
    e b'~ |
    b g~ |
    g f~ |
    f g~ |
    g fis |
    g1 \bar "||"
  }
}
fourthMixolydianCPii = \new Voice {
  \relative c' {
    \clef "bass"
    r2 g~ |
    g2 f~ |
    f d~ |
    d c~ |
    c e~ |
    e g~ |
    g f~ |
    f e~ |
    e g~ |
    g f~ |
    f d~ |
    d g~ |
    g fis |
    g1 \bar "||"
  }
}
fourthAeolianCPi = \new Voice {
  \relative c'' {
    \clef "treble"
    r2 a~ |
    a e'~ |
    e d~ |
    d f~ |
    f e~ |
    e c~ |
    c d~ |
    d c~ |
    c b~ |
    b a~ |
    a gis |
    a1 \bar "||"
  }
}
fourthAeolianCPii = \new Voice {
  \relative c' {
    \clef "bass"
    r2 a~ |
    a e~ |
    e d~ |
    d a'~ |
    a e~ |
    e c~ |
    c b~ |
    b a |
    b f'~ |
    f a~ |
    a gis |
    a1 \bar "||"
  }
}
\book {
  \header {
    title = "Gradus ad Parnassum"
    composer = "Ryutaro Ikeda"
    tagline = ""
  }
  \score {
    \header { piece = "I. First Species in Dorian Above the c.f." }
   \exerciseStaff \firstDorianCPi \DorianCFi 
   \midi {}
   \layout {}
 }
  \score {
    \header { piece = "II. First Species in Dorian Below the c.f." }
  \exerciseStaff \DorianCFi \firstDorianCPii
  \midi {}
  \layout {}
  }
  \score {
    \header { piece = "III. First Species in Phrygian Above the c.f." }
    \exerciseStaff \firstPhrygianCPi \PhrygianCFi
    \midi {}
    \layout {}
  }
  \score {
    \header { piece = "IV. First Species in Phrygian Below the c.f." }
    \exerciseStaff \PhrygianCFi \firstPhrygianCPii
    \midi {}
    \layout {}
  }
  \score {
    \header { piece = "V. First Species in Lydian Above the c.f." }
    \exerciseStaff \firstLydianCPi \LydianCFi
    \midi {}
    \layout {}
  }
  \score {
    \header { piece = "VI. First Species in Lydian Below the c.f." }
    \exerciseStaff \LydianCFi \firstLydianCPii
    \midi {}
    \layout {}
  }
  \score {
    \header { piece = "VII. First Species in G Above the c.f." }
    \exerciseStaff \firstGDurCPi \MixolydianCFi 
    \midi {}
    \layout {}
   }
    \score {
   \header { piece = "VIII. First Species in Mixolydian Below the c.f." }
   \exerciseStaff \MixolydianCFi \firstMixolydianCPii
   \midi {}
   \layout {}
   }
    \score {
   \header { piece = "IX. First Species in Aeolian Above the c.f." }
   \exerciseStaff \firstAeolianCPi \AeolianCFi
   \midi {}
   \layout {}
   }
    \score {
   \header { piece = "X. First Species in Aeolian Below the c.f." }
   \exerciseStaff \AeolianCFi \firstAeolianCPii
   \midi {}
   \layout {}
   }
    \score {
   \header { piece = "XI. First Species in Ionian Above the c.f." }
   \exerciseStaff \firstIonianCPi \IonianCFi 
   \midi {}
   \layout {}
   }
    \score {
   \header { piece = "XII. First Species in Ionian Below the c.f." }
   \exerciseStaff \IonianCFi \firstIonianCPii 
   \midi {}
   \layout {}
   }
   \score {
     \header { piece = "XIII. Second Species in Dorian Above the c.f." }
     \exerciseStaff \secondDorianCPi \DorianCFi
     \midi {}
     \layout {}
   }
   \score {
     \header { piece = "XIV. Second Species in Dorian Below the c.f." }
     \exerciseStaff \DorianCFi \secondDorianCPii 
     \midi {}
     \layout {}
   }
   \score {
     \header { piece = "XV. Second Species in Phrygian Above the c.f." }
     \exerciseStaff \secondPhrygianCPi \PhrygianCFi
     \midi {}
     \layout {}
   }
   \score {
     \header { piece = "XVI. Second Species in Phrygian Below the c.f." }
     \exerciseStaff \PhrygianCFi \secondPhrygianCPii
     \midi {}
     \layout {}
   }
   \score {
     \header { piece = "XVII. Second Species in Lydian Above the c.f." }
     \exerciseStaff \secondLydianCPi \LydianCFi 
     \midi {}
     \layout {}
   }
   \score {
     \header { piece = "XVIII. Second Species in Lydian Below the c.f." }
     \exerciseStaff \LydianCFi \secondLydianCPii  
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XIX. Second Species in Mixolydian Above the c.f." }
     \exerciseStaff \secondMixolydianCPi \MixolydianCFi  
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XX. Second Species in Mixolydian Below the c.f." }
     \exerciseStaff \MixolydianCFi \secondMixolydianCPii
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XXI. Second Species in Aeolian Above the c.f." }
     \exerciseStaff \secondAeolianCPi \AeolianCFi
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XXII. Second Species in Aeolian Below the c.f." }
     \exerciseStaff \AeolianCFi \secondAeolianCPii 
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XXIII. Second Species in Ionian Above the c.f." }
     \exerciseStaff \secondIonianCPi \IonianCFi 
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XXIV. Second Species in Ionian Below the c.f." }
     \exerciseStaff \IonianCFi \secondIonianCPii 
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XXV. Third Species in Dorian Above the c.f." }
     \exerciseStaff \thirdDorianCPi \DorianCFi 
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XXVI. Third Species in Dorian Below the c.f." }
     \exerciseStaff \DorianCFi \thirdDorianCPii 
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XXVII. Third Species in Phrygian Above the c.f." }
     \exerciseStaff \thirdPhrygianCPi \PhrygianCFi 
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XXVIII. Third Species in Phrygian Below the c.f." }
     \exerciseStaff \PhrygianCFi \thirdPhrygianCPii 
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XXIX. Third Species in Lydian Above the c.f." }
     \exerciseStaff \thirdLydianCPi \LydianCFi 
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XXX. Third Species in Lydian Below the c.f." }
     \exerciseStaff \LydianCFi \thirdLydianCPii 
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XXXI. Third Species in Mixolydian Above the c.f." }
     \exerciseStaff \thirdMixolydianCPi \MixolydianCFi 
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XXXII. Third Species in Mixolydian Below the c.f." }
     \exerciseStaff \MixolydianCFi \thirdMixolydianCPii 
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XXXIII. Third Species in Aeolian Above the c.f." }
     \exerciseStaff \thirdAeolianCPi \AeolianCFi 
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XXXIV. Third Species in Aeolian Below the c.f." }
     \exerciseStaff \AeolianCFi \thirdAeolianCPii 
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XXXV. Third Species in Ionian Above the c.f." }
     \exerciseStaff \thirdIonianCPi \IonianCFi 
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XXXVI. Third Species in Ionian Below the c.f." }
     \exerciseStaff \IonianCFi \thirdIonianCPii 
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XXXVII. Fourth Species in Dorian Above the c.f." }
     \exerciseStaff \fourthDorianCPi \DorianCFi 
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XXXVIII. Fourth Species in Dorian Below the c.f." }
     \exerciseStaff \DorianCFi \fourthDorianCPii
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XXXIX. Fourth Species in Phrygian Above the c.f." }
     \exerciseStaff \fourthPhrygianCPi \PhrygianCFi 
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XL. Fourth Species in Phrygian Below the c.f." }
     \exerciseStaff \PhrygianCFi \fourthPhrygianCPii
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XLI. Fourth Species in Lydian Above the c.f." }
     \exerciseStaff \fourthLydianCPi \LydianCFi 
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XLII. Fourth Species in Lydian Below the c.f." }
     \exerciseStaff \LydianCFi \fourthLydianCPii
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XLIII. Fourth Species in Mixolydian Above the c.f." }
     \exerciseStaff \fourthMixolydianCPi \MixolydianCFi 
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XLIV. Fourth Species in Mixolydian Below the c.f." }
     \exerciseStaff \MixolydianCFi \fourthMixolydianCPii
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XLV. Fourth Species in Aeolian Above the c.f." }
     \exerciseStaff \fourthAeolianCPi \AeolianCFi 
     \midi {}
     \layout {}
   }
   \score {
     \header {piece = "XLIVI. Fourth Species in Aeolian Below the c.f." }
     \exerciseStaff \AeolianCFi \fourthAeolianCPii
     \midi {}
     \layout {}
   }
}
 
