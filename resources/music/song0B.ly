\version "2.18.2"
\header{
	title = "Fairy Theme"
}

% $30 = quarter

\pointAndClickOff
\language "english"

instrHarp = {
	\set Staff.midiInstrument = #"orchestral harp"
}

segAtrackA = {
	\clef treble
	\time 4/4
	\key g \minor
	\numericTimeSignature

	\partial 4 r4
}

segAtrackB = {
	\clef bass
	\time 4/4
	\key g \minor
	\numericTimeSignature

	\partial 4 r4
}

segBtrackA = {
	\instrHarp
	\clef treble
	% vol 8C
	% pan 02
	bf''4
	af''
	g''
	af''
	af''
	gf''
	f''
	gf''
	gf''
	f''
	e''
	f''
	f''
	ef''
	d''
	ef''
}

segBtrackB = {
	\instrHarp
	\clef treble
	% vol $8C
	% pan $04
	r16
	ef''4
	ef''
	ef''
	ef''
	df''
	df''
	df''
	df''
	b'
	b'
	b'
	b'
	bf'
	bf'
	bf'
	bf'8.
}

segBtrackC = {
	\instrHarp
	\clef treble
	% vol $8C
	% pan $06
	r8
	b'4
	b'
	b'
	b'
	bf'
	bf'
	bf'
	bf'
	af'
	af'
	af'
	af'
	gf'
	gf'
	gf'
	gf'8
}

segBtrackD = {
	\instrHarp
	\clef treble
	% vol $8C
	% pan $08
	r8.
	af'4
	af'
	af'
	af'
	gf'
	gf'
	gf'
	gf'
	f'
	f'
	f'
	f'
	ef'
	ef'
	ef'
	ef'16
}

segBtrackE = {
	\instrHarp
	\clef bass
	% vol $C8
	% pan $0A
	b,,8.
	bf4.
	ef8.
	df'
	ef16
	bf,,8.
	af4.
	bf,,8.
	df'
	df16
	af,,8.
	gf4~gf16
	af,,8.
	f
	df8
	gf,,8.
	f4~f16
	gf,,8.
	ef
	df'8
}

segBtrackF = {
	\instrHarp
	\clef bass
	% vol $C8
	% pan $0E
	r16
	b,2~b,16
	bf8.
	bf~bf16
	bf,2~bf,16
	af8.
	af~af16
	af,2
	af,8.
	af
	b,16~b,16
	gf,2
	gf,8.
	af
	b16
}

segBtrackG = {
	\instrHarp
	\clef bass
	% vol $C8
	% pan $12
	r8
	ef4.~ef16~ef8
	af8.
	af8~af8
	df4.~df16~df8
	gf8.
	gf8~gf8
	b,8~b,4.
	gf8.
	f8.~f8
	bf,8~bf,4.
	f8.
	gf
}

segCtrackA = {
	\instrHarp
	\clef treble
	bf''4
	af''
	g''
	af''
	b''
	bf''
	a''
	bf''
	df'''
	b''
	bf''
	b''
	bf''
	af''
	gf''
	f''
}

segCtrackB = {
	\instrHarp
	\clef treble
	r16
	ef''4
	ef''
	ef''
	ef''
	e''
	e''
	e''
	e''
	ef''
	ef''
	ef''
	ef''
	b'
	b'
	b'
	b'8.
}

segCtrackC = {
	\instrHarp
	\clef treble
	r8
	b'4
	b'
	b'
	b'
	df''
	df''
	df''
	df''
	b'
	b'
	b'
	b'
	af'
	af'
	af'
	af'8
}

segCtrackD = {
	\instrHarp
	\clef treble
	r8.
	af'4
	af'
	af'
	af'
	g'
	g'
	g'
	g'
	af'
	af'
	af'
	af'
	f'
	f'
	f'
	f'16
}

segCtrackE = {
	\instrHarp
	\clef bass
	b,,8.
	bf4~bf16
	b,,8.
	af
	af8
	bf,,8.
	df'4~df'16
	ef,8.
	bf
	df'8
	af,,8.
	b4~b16
	af,,8.
	bf
	af8
	df,8.
	b4~b16
	df,8.
	af
	af'8
}

segCtrackF = {
	\instrHarp
	\clef bass
	r16
	b,2
	b,8.
	ef'
	ef16~ef16
	bf,2
	ef8.
	e'
	bf16~bf16
	af,2
	af,8.
	df'
	ef16~ef16
	df2
	df8.
	f'
	f'16
}

segCtrackG = {
	\instrHarp
	\clef bass
	r8
	ef4.~ef8
	bf8.
	bf~bf8
	df4.~df8
	df'8.
	ef'~ef'8
	ef4.~ef8
	b8.
	b~b8
	af4.~af8
	b8.
	ef'
}

music =
<<
	
	\new Staff \absolute { \new Voice \with { \remove "Note_heads_engraver" \consists "Completion_heads_engraver" \remove "Rest_engraver" \consists "Completion_rest_engraver" } \segAtrackA \repeat volta 3 { \segBtrackA \segCtrackA } }
	\new Staff \absolute { \new Voice \with { \remove "Note_heads_engraver" \consists "Completion_heads_engraver" \remove "Rest_engraver" \consists "Completion_rest_engraver" } \segAtrackA \repeat volta 3 { \segBtrackB \segCtrackB } }
	\new Staff \absolute { \new Voice \with { \remove "Note_heads_engraver" \consists "Completion_heads_engraver" \remove "Rest_engraver" \consists "Completion_rest_engraver" } \segAtrackA \repeat volta 3 { \segBtrackC \segCtrackC } }
	\new Staff \absolute { \new Voice \with { \remove "Note_heads_engraver" \consists "Completion_heads_engraver" \remove "Rest_engraver" \consists "Completion_rest_engraver" } \segAtrackA \repeat volta 3 { \segBtrackD \segCtrackD } }
	\new Staff \absolute { \new Voice \with { \remove "Note_heads_engraver" \consists "Completion_heads_engraver" \remove "Rest_engraver" \consists "Completion_rest_engraver" } \segAtrackB \repeat volta 3 { \segBtrackE \segCtrackE } }
	\new Staff \absolute { \new Voice \with { \remove "Note_heads_engraver" \consists "Completion_heads_engraver" \remove "Rest_engraver" \consists "Completion_rest_engraver" } \segAtrackB \repeat volta 3 { \segBtrackF \segCtrackF } }
	\new Staff \absolute { \new Voice \with { \remove "Note_heads_engraver" \consists "Completion_heads_engraver" \remove "Rest_engraver" \consists "Completion_rest_engraver" } \segAtrackB \repeat volta 3 { \segBtrackG \segCtrackG } }
>>




\score {
	\music
}

\score {
	\unfoldRepeats { \music }
	\midi {
		\context {
			\Staff
			\remove "Staff_performer"
		}
		\context {
			\Voice
			\consists "Staff_performer"
		}
	}
}