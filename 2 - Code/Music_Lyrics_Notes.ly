
%%%%%%%%%%%%%%%%%%
% Some useful definitions for early music
%%%%%%%%%%%%%%%%%%

italicas=\override LyricText #'font-shape = #'italic
rectas=\override LyricText #'font-shape = #'upright
ss=\once \set suggestAccidentals = ##t
ficta = \once \set suggestAccidentals = ##t
date = #(strftime "%Y-%m-%d" (localtime (current-time)))
%m0 = \melismaEnd
%m1 = \melisma

%% Defining graphics for unusual mensural time signatures!
#(
  define ((double-time-signature2 glyph a) grob) (
       grob-interpret-markup grob (
          markup  (
            #:line ( #:musicglyph glyph #:number #:vcenter a )
          )
       )
  )
)
#(
  define ((double-time-signature3 glyph a b) grob) (
       grob-interpret-markup grob (
          markup  (
            #:line ( #:musicglyph glyph #:vcenter #:column (a b) )
          )
       )
  )
)
#(
  define ((custom-time-signature glyph) grob) (
       grob-interpret-markup grob (
          markup  (
            #:line ( #:musicglyph glyph)
          )
       )
  )
)


%%%%%%%%%%%%%%%%%%
% 3 - Score content: notes
%%%%%%%%%%%%%%%%%%

\language "english"

StaveANotes = {

  % clef c1  % tweak / uncomment for debugging - this should override the clef in the score block

  \override Score.TimeSignature.stencil =
    #(custom-time-signature "timesig.mensural22")
  \time 2/1

  %\mark \markup \italic {"Prima Pars"}

  %\override Score.TimeSignature.stencil =
  %   #(double-time-signature2 "timesig.mensural98" "3")
  % \time 3/2

R\longa R\breve c''\breve a'2 c''1 c''2 d''4 ( c''4 bf'4
  a'4 g'2 ) g'2   % 2
  a'1 a'2. ( bf'4 c''2 ) c''2 c''2 a'2 a'1
  r1 R\longa r1  c''\breve
   a'2 c''1 c''2 d''4 ( c''4 bf'4 a'4 g'2 ) g'2 a'1 a'2 c''1 c''2
  c''2 a'2 a'2 c''2 d''1 c''2. ( bf'4   % 4
  a'4 g'4 a'1 ) f'2 c''2 c''2 bf'2. ( a'4 g'2 ) c''2 c''2 c''2 d''1.
  d''2 c''2 f''2. e''4 e''2 d''4 ( c''4 c''1 ) \ficta b'2   % 5
  c''2 g'2 g'2 g'2 a'1. a'2 g'1 r1 R\breve r2 c''2 c''2 c''2 f''1. f''2
    % 6
  e''1
  r1 R\longa r2 g'2 g'2 g'2 bf'1. bf'2 a'2 bf'2. a'4 a'2   % 7
  g'4 ( f'4 f'1 ) e'2 f'1
  r1 R\longa r1 r2 a'1 g'2 a'2 c''1 % 8
  b'2 c''2. c''4 d''2 c''2 c''2 c''2 a'2 a'1 bf'2 d''2 c''2 bf'2
  a'1 a'2 d''2 g'2 r2 g'2 a'2 c''1 % 9
  bf'2 a'1 g'2 g'2 e'2. ( d'4 e'2 ) f'2 r2 c''2 d''2 f''1 e''2
  d''2. ( e''4 f''4 g''4 f''2 ) d''2 d''1 c''1 (
  \ficta  b'2 ) c''\breve r\breve r2 f'1 g'2 bf'2 a'2 c''1
   r1 R\longa
   g'1 a'2 c''1 bf'2 a'1 bf'2. ( c''4 d''4 e''4 f''2. e''4 c''2
  ) d''1 f''2. ( e''4 d''4 c''4 d''2 )   % 12
  c''\maxima*1/4

  % \cadenzaOn

  %  b'\maxima*1/4
    \bar "|."
  %\cadenzaOff


}
StaveBNotes = {

  % clef c3  % tweak / uncomment for debugging - this should override the clef in the score block
  r1 c''\breve a'2 c''1 c''2
  d''4 ( c''4 bf'4 a'4 g'2 ) g'2 a'2. ( bf'4 c''2 ) a'1 f''1 f''1 e''2
    % 2
  f''1 r1 R\longa c''\breve a'2 c''1 c''2 d''4 ( c''4 bf'4 a'4 g'2 )
  g'2   % 3
  a'2. ( bf'4 c''1 ) g'2 a'2 f'2 f'2 c''\breve. r1 f''1 e''2 f''1
   f''2 g''4 ( f''4 e''4 d''4   % 4
  c''2 ) c''2 c''2 a'1 a'2 d''2 d''2 c''2 g'2 g'2 g'2 bf'1. bf'2 a'2
  c''2. c''4 c''2 a'2 a'2 g'\breve % 5
   r1 R\breve r2 c''2 c''2 c''2 d''1. d''2 c''1 r2 c''2 c''2 c''2
  a'1. % 6
   g'2 g'1 r2 c''2 c''2 c''2 f''1. f''2 e''2 e''2. e''4 e''2 d''1.
  d''2 d''2 d''2. c''4 c''2   % 7
  bf'2. ( a'4 g'2 ) g'2 a'1 r1 R\longa r1 c''1 c''2 c''2 d''2 e''2   % 8
  f''2. f''4 e''2 g''1 f''1 e''2 f''1 r\breve r2 c''1 d''2 f''2 e''2
  d''2. ( e''4 f''4 g''4 f''2 )   % 9
  d''2 d''1 c''1 ( \ficta b'2 ) c''1 r1 r2 g'2 a'1 c''1 bf'1 a'1 R\breve
  d''1 e''2 g''1 g''2 c''2 f''1 e''2 d''1 c''1 f'1 g'1 bf'2. a'4 g'2
  f'2 c''2 c''2. (   % 11
   bf'8 a'8 g'2. f'4 f'1 e'2 ) f'\breve r2 c''2 d''2 f''1 d''2 c''2
  f''2. ( e''4 d''1 ) d''2 bf'1   % 12
  a'\maxima*1/4
}
StaveCNotes = {

  % clef c4  % tweak / uncomment for debugging - this should override the clef in the score block
  f'\breve e'2 f'1 f'2
  a'4 ( g'4 f'4 e'4 d'2 ) d'2 e'1 f'1. f'2 f'1 bf1 c'2 c'1 % 2
   c'2 f'2 f'2 g'2 a'2 f'1 e'2 f'2 f'1 g'1 f'2 c'2 f'2. ( g'4 a'2 )
  a'2 d'1 r1   % 3
  f'\breve e'2 f'1 d'2 e'2 e'2 f'2. ( g'4 a'1 ) g'2 f'4 ( g'4 a'4 bf'4
  c''2. bf'4 a'2 ) a'2 a'2 g'1   % 4
  r2 c'2 c'2 c'2 f'1. f'2 e'1 e'1 f'2 f'2 g'2 f'2 f'2 a'2. g'4 g'2 f'2.
  ( e'4 d'2 ) d'2   % 5
  e'\breve f'2 f'2 f'2 c''1 g'2 a'1 bf'2. bf'4 g'2 f'1 e'2 f'2. ( g'4
  a'1 ) r1   % 6
  R\breve f'2. e'4 e'1 d'4 ( c'4 c'1 ) \ficta b2 c'2 c'2 c'2 c'2 g'2. g'4 f'2
  f'2. f'4 f'2 f'2 f'2   % 7
  d'1 r1 c'1 c'2 c'2 d'2 e'2 f'2. f'4 e'2 g'1 f'1 e'2 f'1
  R\breve   % 8
  f'1 g'1 bf'2 a'2 g'2 g'2 f'2 f'4 ( e'4 d'4 c'4 bf2 ) f'1 r1 r2 f'1
  g'2 bf'1 a'1   % 9
  g'1 f'1 d'1 c'2. ( bf8 a8 g2 d'2 ) c'1
  R\breve f'1. a'2 bf'1 a'1
  g'2 g'2. ( f'4 e'4 d'4 e'2 ) g'2 a'2. ( g'8 f'8 g'1 ) f'1 r2 c'2 d'2
  f'1 ef'2 d'2 d'1 d'2 e'2. ( d'4   % 11
  c'4 g4 bf4 c'4 d'4 c'4 a4 bf4 c'2 ) c'2 c'1 c'2 f'1 f'2 d'2. ( e'4
  f'2 ) f'2. ( g'4 a'1 ) f'2 d'2. ( e'4 f'1 )   % 12
  f'\maxima*1/4

}

StaveDNotes = { 

  % clef c4  % tweak / uncomment for debugging - this should override the clef in the score block
    R\longa*3
  r1 c'\breve a2 c'1 c'2 d'4 ( c'4 bf4 a4 g2 ) g2 a2. ( bf4 c'2
  ) a1 f'1 f'1 e'2   % 3
  f'2 f2 f4 ( g4 a4 bf4 c'2 ) a2 bf1 c'1. a2 c'1 c'1 f4 ( g4 a4 bf4 c'2
  ) c'2 f'2 d'2 r2 c'1 % 4
   f'1 f'2 c'1 r1 c'1 c'2 c'2 bf2. ( a4 g2 ) bf2 f1 c'2. c'4 f1 g2
  g2   % 5
  g1 r2 c'2 c'2 c'2 f'1. e'2 c'2 f'2. f'4 f2 bf2. ( a4 g1 ) a1 f1 c'2
  c'2   % 6
  c'2 e'1 e'2 d'2 c'2. c'4 c'2 a1. f2 g1 r2 g2 g2 g2 d'2. d'4 d'2 bf2.
  f4 f2   % 7
  bf2 bf2 c'1 r2 a1 g2 a2 c'1 \ficta b2 c'2. c'4 d'2 d'2 bf2 bf2 a2 f'2 f'2
  e'2 d'2 c'2   % 8
  d'2. d'4 c'2 ef'2 d'2 f'2 c'2 c'1 d'2 f'2 ef'2 d'4 ( e'4 f'4 c'4 d'4
  e'4 f'2 ) f'2. ( e'4 d'2 ) e'2 g'1 c'1   % 9
  R\breve g1. a2 c'2 bf2 a2 g2 f2 a2. ( bf4 c'2 ) d'2 bf4 ( c'4 d'4 e'4
  f'1 ) f'2 f'2. ( e'4
  d'1 ) c'2 c'1 e'2 f'2 d'2 c'2. ( bf4 a2 ) a1 c'2 bf4 ( c'4 d'2 ) c'1
  f1 g2 bf1 a2   % 11
  g1 a2 f2 g1 f2 a1 bf2 d'2 c'2 bf1 f2. ( g4 a1. ) a2 bf\breve   % 12
  c'\maxima*1/4

}
StaveENotes = { 

  % clef c4  % tweak / uncomment for debugging - this should override the clef in the score block
  R\longa*3
  f\breve e2 f1 f2 a4 ( g4 f4 e4 d2 ) d2 e1 f1. f2 f1 bf,1 c1   % 3
  R\longa r1 f\breve e2 f1 f2 a4 ( g4 f4 e4 d2 ) d2 e1   % 4
  f1. f2 f1 bf,1 c\breve R\longa R\breve   % 5
  c1 c2 c2 f2. ( e4 d2 ) f2 c1 f2. f4 bf,\breve c2 c2 f1 r2 f2 f2 f2   % 6
  c'1. c'2 bf2 a2. a4 a2 f2. ( e4 d2 ) d2 c\breve
  R\longa  R\breve
  f1 f2 e2 d2 c2 d2. d4 c2 c'2 bf2. ( a4 g2 ) g2 f1
  R\breve R\longa f1. g2 bf2 a2 g2 f2. (  e4 d1 ) c2 g1 f1   % 9
  R\breve r1 c1. d2 f2 e2 d1 a1 bf2 d'1 d'2 bf1 f2 f2
  g1 c\breve r1 c1 d2 f1 e2 d1 r1 bf,\breve c1   % 11
  ef1 d1 c1 f1. bf,2 f1 bf,2 bf,1 bf,2 f2. ( e4 d2. c4 bf,\breve )   % 12
  f\maxima*1/4

}
StaveFNotes = { }
StaveGNotes = {  }
StaveHNotes = {  }

% Convenient overrides - comment and uncomment to add and remove staves for quick debugging / rendering purposes:
% StaveANotes = {  }
% StaveBNotes = {  }
% StaveCNotes = {  }
% StaveDNotes = {  }
% StaveENotes = {  }
% StaveFNotes = {  }
% StaveGNotes = {  }
% StaveHNotes = {  }

%%%%%%%%%%%%%%%%%%
% 4 - Score content: text / lyrics
%%%%%%%%%%%%%%%%%%

StaveALyrics = \lyricmode {  

    Sanc -- ta et im -- ma -- cu -- la -- ta __ Vir -- gi -- ni -- tas,
    Sanc -- ta et im -- ma -- cu -- la -- ta,
    Sanc -- ta et im -- ma -- cu -- la -- ta __ Vir -- gi -- ni -- tas, __
    Qui -- bus te lau -- di -- bus ef -- fe -- rem nes -- ci -- o,
    Qui -- bus te lau -- di -- bus,
    Qui -- bus te lau -- di -- bus,
    Qui -- bus te lau -- di -- bus ef -- fe -- rem nes -- ci -- o,
    Qui -- a quem coe -- li ca -- pe -- re non po -- te -- rant,
    tu -- o gre -- mi -- o con -- tu -- li -- sti,
    tu -- o gre -- mi -- o con -- tu -- li -- sti,
    tu -- o gre -- mi -- o con -- tu -- li -- sti,
    tu -- o gre -- mi -- o,
    tu -- o gre -- mi -- o con -- tu -- li -- sti.

}
StaveBLyrics = \lyricmode {  
  	Sanc -- ta et im -- ma -- cu -- la -- ta Vir -- gi -- ni -- tas,
	Sanc -- ta et im -- ma -- cu -- la -- ta Vir -- gi -- ni -- tas,
	Sanc -- ta et im -- ma -- cu -- la -- ta Vir -- gi -- ni -- tas,
	Qui -- bus te lau -- di -- bus ef -- fe -- rem nes -- ci -- o,
	Qui -- bus te lau -- di -- bus,
	Qui -- bus te lau -- di -- bus,
	Qui -- bus te lau -- di -- bus ef -- fe -- rem nes -- ci -- o,
	ef -- fe -- rem nes -- ci -- o,
	Qui -- a quem coe -- li ca -- pe -- re non po -- te -- rant,
	tu -- o gre -- mi -- o __ con -- tu -- li -- sti,
	tu -- o gre -- mi -- o,
	tu -- o gre -- mi -- o con -- tu -- li -- sti,
	tu -- o gre -- mi -- o con -- tu -- li -- sti,
	tu -- o gre -- mi -- o con -- tu -- li -- sti.


}
StaveCLyrics = \lyricmode {

    Sanc -- ta et im -- ma -- cu -- la -- ta Vir -- gi -- ni -- tas,
    Sanc -- ta et im -- ma -- cu -- la -- ta Vir -- gi -- ni -- tas,
    Vir -- gi -- ni -- tas,
    Sanc -- ta et im -- ma -- cu -- la -- ta Vir -- gi -- ni -- tas,
    Qui -- bus te lau -- di -- bus,
    Qui -- bus te lau -- di -- bus ef -- fe -- rem nes -- ci -- o,
    Qui -- bus te lau -- di -- bus ef -- fe -- rem nes -- ci -- o, __
    ef -- fe -- rem nes -- ci -- o,
    Qui -- bus te lau -- di -- bus ef -- fe -- rem nes -- ci -- o,
    Qui -- a quem coe -- li ca -- pe -- re non po -- te -- rant,
    tu -- o gre -- mi -- o con -- tu -- li -- sti,
    tu -- o gre -- mi -- o con -- tu -- li -- sti,
    tu -- o gre -- mi -- o con -- tu -- li -- sti,
    tu -- o gre -- mi -- o con -- tu -- li -- sti,
    tu -- o gre -- mi -- o con -- tu -- li -- sti.


}
StaveDLyrics = \lyricmode {
  	Sanc -- ta et im -- ma -- cu -- la -- ta Vir -- gi -- ni -- tas,
	Vir -- gi -- ni -- tas,
	Sanc -- ta et im -- ma -- cu -- la -- ta Vir -- gi -- ni -- tas,
	Qui -- bus te lau -- di -- bus ef -- fe -- rem nes -- ci -- o,
	Qui -- bus te lau -- di -- bus ef -- fe -- rem nes -- ci -- o,
	Qui -- bus te lau -- di -- bus ef -- fe -- rem nes -- ci -- o,
	Qui -- bus te lau -- di -- bus ef -- fe -- rem nes -- ci -- o,
        Qui -- a quem coe -- li ca -- pe -- re non po -- te -- rant,
	Qui -- a quem coe -- li ca -- pe -- re non po -- te -- rant,
	tu -- o gre -- mi -- o __ con -- tu -- li -- sti,
	tu -- o gre -- mi -- o con -- tu -- li -- sti,
	con -- tu -- li -- sti,
	tu -- o gre -- mi -- o __ con -- tu -- li -- sti,
	tu -- o gre -- mi -- o con -- tu -- li -- sti,
	tu -- o gre -- mi -- o con -- tu -- li -- sti.

}
StaveELyrics = \lyricmode {
	Sanc -- ta et im -- ma -- cu -- la -- ta Vir -- gi -- ni -- tas,
	Sanc -- ta et im -- ma -- cu -- la -- ta Vir -- gi -- ni -- tas,
	Qui -- bus te lau -- di -- bus ef -- fe -- rem nes -- ci -- o,
	Qui -- bus te lau -- di -- bus ef -- fe -- rem nes -- ci -- o,
	Qui -- a quem coe -- li ca -- pe -- re non po -- te -- rant,
	tu -- o gre -- mi -- o con -- tu -- li -- sti,
	tu -- o gre -- mi -- o,
	tu -- o gre -- mi -- o con -- tu -- li -- sti,
	tu -- o gre -- mi -- o,
	tu -- o gre -- mi -- o con -- tu -- li -- sti,
	con -- tu -- li -- sti.


}
StaveFLyrics = \lyricmode { A }
StaveGLyrics = \lyricmode { A }
StaveHLyrics = \lyricmode { A }

 % Tanslation and attribution of text
 \markup {
        \vspace #1
	\fill-line {
		\column {
                        \vspace #1
			\line { \italic { O holy and immaculate virginity,}}
			\line { \italic { By what praises I may extol thee I know not:}}
			\line { \italic { For he whom the heavens could not contain}}
			\line { \italic { Thou hast born in thy womb. } }
			\vspace #1
			\line { 6th Responsory at Matins of Christmas; also used for Marian feasts.  }

		}
	}
}



%%%%%%%%%%%%%%%%%%
% 5 - Editorial content, including prefatory stave / incipit settings and notes
%%%%%%%%%%%%%%%%%%

 %  Should very rarely need to be touched once a given piece has been typeset

% 5a Editorial method and comments
\markup {
    \vspace #3
    \column {
          %\wordwrap  { \italic { Music source and editorial comments go here.} }

          \wordwrap  {
              \italic {Andreae Gabrielis Sacrae Cantiones [...], Liber Primus}
              , published Antonio Gardano, Venice 1565;
              acknowledgements to the Bavarian State Library,
              whose website \italic{(http://bildsuche.digitale-sammlungen.de)} contains a scan of the whole publication.
          }
          \vspace #1
          \wordwrap  {
              Barlines are editorial (one bar per \italic {tempus}, ie. breve); 
              ficta, ligature brackets, cautionary and courtesy accidentals are above the stave where applicable. 
              Original note-values have been preserved as far as possible.
              Original mensuration marks are presented rather than imposing modern time signatures.
              Editorial underlay is in italics where applicable;
              Latin spelling has been modernised in places to aid legibility, and punctuation has been
              added.
          }
          \vspace #1
          \wordwrap {
              This is Gabrieli's first published collection of his compositions
              and shows his early style.  1565 is an interesting date as Gabrieli's
              star was just rising in Venice - he had travelled to Munich in 1562,
              befriending Lassus, and then he became organist at S Marco in 1566.
              Quite possibly this collection,  deidcated to Prince Albert, Duke of Bavaria
              and probably at least partially composed while in Munich,
              helped Gabrieli to gain the post.
          }
          \vspace #1
          \wordwrap {
              As suggested on the 1565 title page, instrumental support or substitution
              is optional but worth considering.
	  }
	  \vspace #3
	  .
    }
}

%% 5b - Plainsong incipit - obviously, comment out as required.
%\score   {
%    \transpose c \TranspositionInterval <<
%          \new Staff \with { \remove "Time_signature_engraver" \remove "Ambitus_engraver" } {
%                \set Staff.instrumentName = "Intonation"
%                \clef "treble_8"  \global  \cadenzaOn              <<  {
%                          \override Voice.Slur #'tran%sparent = ##f
%                          f4 s8 f4 s8 f4( g4) s8 g4.
%                      }\addlyrics {  In -- ci -- pit here. }
%               >>
%          }
%     >>
%    \layout {\context { \Voice \remove "Stem_engraver" } }
%}


% 5c - Prefatory staves
\layout {   % Need to modify a couple of settings in the main score layout as well
             indent=4\cm
              \context { \Staff
                         \override InstrumentName #'padding = 2
                         \override InstrumentName #'self-alignment-X = #RIGHT
              }
}
PrefatorySettings = {
  		%\override NoteHead   #'style = #'neomensural      % ie. can set to either Mensural or Neomensural
		%\override Rest #'style = #'neomensural
		%\override Staff.TimeSignature #'style = #'neomensural
                \override Flag #'style = #'mensural
                \autoBeamOff
                 \override Staff.InstrumentName #'Y-extent = #'(-4 . 4)
                 \override Staff.InstrumentName #'self-alignment-X = #RIGHT
                \override Staff.InstrumentName #'padding = 2
                % Uncomment these if you want eg. double b flat in key sig using c2 or f3 clef etc
                % May also have to tweak the numbers (4 vs 5 etc)
                \override Staff.KeySignature.flat-positions = #'((-4 . 4))
                \override Staff.KeySignature.sharp-positions = #'((-4 . 4))
                \cadenzaOn
                \key f \major
		\time 2/2
                \huge
}
PrefatoryLayout = \layout {   % Set the layout inside the incipit
		\context {\Voice
			\remove Ligature_bracket_engraver
			\consists Mensural_ligature_engraver

		}
                \context { \Staff \remove Ambitus_engraver}
		line-width=5
                indent =  0
                ragged-right = ##f
		ragged-last = ##f
                system-count = #1
}
PrefStaveA = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveALabel
                    \PrefatorySettings
                    \clef "petrucci-g"
                    c''\breve
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveB = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveBLabel
                    \PrefatorySettings
                    \clef "petrucci-g"
                    c''\breve
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveC = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveCLabel
                    \PrefatorySettings
                    \clef "petrucci-c2"
                    f'\breve
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveD = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveDLabel
                    \PrefatorySettings
                    \clef "petrucci-c3"
                    c'\breve
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveE = \markup {
	\score {
          \new MensuralVoice {
                    \set Staff.instrumentName=\StaveELabel
                    \PrefatorySettings
                    \clef "petrucci-f3"
                    f\breve
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveF = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveFLabel
                    \PrefatorySettings
                    \clef "petrucci-f4"
                    g2
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveG = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveGLabel
                    \PrefatorySettings
                    \clef "petrucci-f4"
                    g2
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveH = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveHLabel
                    \PrefatorySettings
                    \clef "petrucci-f4"
                    f2
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}





\version "2.18"