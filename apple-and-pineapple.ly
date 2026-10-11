\version "2.27.3"

global = {
	\key e \major
	\time 6/8
	s2.*1 \bar "||"
}

\score {
	\new PianoStaff <<
		\new Staff {
			<<
					\new Voice = "soprano" { 
						\voiceOne
							<< \global \relative c' { gis'8 b gis a fis dis } >>
					}
					\new Lyrics \lyricsto "soprano" {
						ap -- ple and pine -- ap -- ple
					}
					\new Voice = "alto" { 
						\voiceTwo
					<< \global \relative c' { e8 gis e fis dis b } >>
					}
			>>
		}
		\new Staff = "bass" {
			\clef "bass"
			<<
					\new Voice = "tenor"
					<<
						{ \voiceOne
						<< \global \relative c' { b8 e b cis b a } >>
						}
					>>
					\new Voice = "bass" { 
						\voiceTwo
					<< \global \relative c { e8 b e fis b, fis' } >>
					}
			>>
		}
	>>
}

\layout {
  indent = #0
  line-width = #90
  ragged-right = ##f
}
