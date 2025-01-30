% Author: Dominic van der Zypen
% Created using vi
% Last modified: 2023-09-11

\version "2.16.0"  % necessary for upgrading to future LilyPond versions.
 
\header{
  title = "Happy-Birthday-Walzer"
  subtitle = "Zu Mamis 75. Geburtstag im Oktober 2023, von Dominic"
}

global= {
  \time 3/4
  \tempo 4 = 180
  \key g \major
}
%---------------------------------- cello1
celloeins= \new Voice \relative c' {
  \set Staff.instrumentName = #"Cello1"
  \clef bass
  r4 d4 d | r4 d d | r4 d d | r4 d,4. d8 | %..4 
  b'2 b4( | b4) e4. d8 | b2 r4 | r2. | %..8
  r4 g4 g | r4 d' d | r4 d d | r4 d,4. d8 | %..12
  e'2 e4( | e4) g4 fis | d2. | r4 d,4. d8 | %..16
  e2 d4( | d4) a' b | g2. | r4 g4. g8 | %..20
  g'2 fis4( | fis) e4. e8 | d2 b4( | b4) g4. g8 | %..24
  g'2 fis4( | fis) e4. e8 | d2. | r4 g,4. g8 | %..28
  g'2 e4( | e4) c4. c8 | b2 a4( | a) f'4. f8 | %..32 
  e2 c4 | d e4. d8 | c4 c c | c c c | %..36 
  c c c | c d,4. d8 | % --> runde 2
  % - - - - - - - - -
  b'2 b4( | b4) e4. d8 | b2 r4 | r2. | %..8
  r4 g4 g | r4 d' d | r4 d d | r4 d,4. d8 | %..12
  e'2 e4( | e4) g4 fis | d2. | r4 d,4. d8 | %..16
  e2 d4( | d4) a' b | g2. | r4 g4. g8 | %..20
  g'2 fis4( | fis) e4. e8 | d2 b4( | b4) g4. g8 | %..24
  g'2 fis4( | fis) e4. e8 | d2. | r4 g,4. g8 | %..28
  g'2 e4( | e4) c4. c8 | b2 a4( | a) f'4. f8 | %..32 
  e2 c4 | d e4. d8 | c2. | %..35
  |\bar "|."
}
%---------------------------------- cello2
cellozwei= \new Voice \relative c' {
  \set Staff.instrumentName = #"Cello2"
  \clef bass
  r4 b4 b | r4 b b | r4 b b | r2. | %..4
  g2 g4( | g4) c4. b8 | g2 r4 | r4 d4. d8 | %..8
  e2 d4( | d4) g a | fis2. | r4 d4. d8 | %..12
  c'2 c4( | c4) e4 d | b2. | r2. | %..16
  cis,2. | c2. | b2. | r4 d4. d8 | %..20
  e'2 d4( | d4) c2 | b2 r4 | r2. | %..24
  cis4 b a | b cis a | d2. | r2. | %..28
  e,2 g4( |g4 g2) | g4 g g | f2. | %..32
  g2. | g2. | e2. | <f a>4 <f a> <f a> | %..36
  <fis a> <fis a> <fis a> | <fis a> 2. ||% --> runde 2
  % - - - - - - - - -
  g2 g4( | g4) c4. b8 | g2 r4 | r4 d4. d8 | %..8
  e2 d4( | d4) g a | fis2. | r4 d4. d8 | %..12
  c'2 c4( | c4) e4 d | b2. | r2. | %..16
  cis,2. | c2. | b2. | r4 d4. d8 | %..20
  e'2 d4( | d4) c2 | b2 r4 | r2. | %..24
  cis4 b a | b cis a | d2. | r2. | %..28
  e,2 g4( |g4 g2) | g4 g g | f2. | %..32
  g2. | g2. | e2. | %..35
  | \bar "|."
}
%---------------------------------- cello3
cellodrei= \new Voice \relative c' {
  \set Staff.instrumentName = #"Cello3"
  \clef bass
  g,4 r4 r4 | d r4 r4 | g r4 r4 | d r4 r4 | %..4
  r4 g4 g | r4 g g | r4 g g | r2. | %..8
  c2 b4 | bes2. | a2. | r2. | %..12
  r4 g4 g | r4 a a | r4 g g | r2. | %..16
  r4 a a | r4 d d | g,2. | r2. | %..20
  c4 c e | e fis fis | b2. | r2. | %..24
  a2. | g2 a4 | d,2. | r2. | %..28
  r4 c4 c | r4 e e | r4 f f | d2. | %..32
  g2. | g,2.| c4 c c | d d d | %..36
  d d d | d2. | % --> runde 2
  % - - - - - - - - -
  r4 g,4 g | r4 g g | r4 g g | r2. | %..8
  c2 b4 | bes2. | a2. | r2. | %..12
  r4 g4 g | r4 a a | r4 g g | r2. | %..16
  r4 a a | r4 d d | g,2. | r2. | %..20
  c4 c e | e fis fis | b2. | r2. | %..24
  a2. | g2 a4 | d,2. | r2. | %..28
  r4 c4 c | r4 e e | r4 f f | d2. | %..32
  g2. | g,2.| c2. | %..35
  |\bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff << \global \celloeins >>
    \new Staff << \global \cellozwei >>
    \new Staff << \global \cellodrei >>
  >>
  \layout { }
  \midi { }
}
