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
    \tempo 4 = 280
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

}
 
