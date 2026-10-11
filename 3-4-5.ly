\version "2.27.3"

\score {
	\new Staff {
		<<
		\new Voice = "three" {
			\relative c' {
				\time 3/4
				c8[ e] g[ f] d[ b] \bar "||"
			}
		}
		\new Lyrics \lyricsto "three" {
			We are sing -- ing three beats
		}
		>>
	}
}

\score {
	\new Staff {
		<<
		\new Voice = "four" {
			\relative c' {
				\time 4/4
				\override Staff.TimeSignature.style = #'numbered
				c8[ e] g[ b] a[ f] d[ b] \bar "||"
			}
		}
		\new Lyrics \lyricsto "four" {
			There are four beats in a bar and
		}
		>>
	}
}

\score {
	\new Staff {
		<<
		\new Voice = "five" {
			\relative c' {
				\time 5/4
				c8[ e] g[ c] d[ b] a[ f] d[ b] \bar "||"
			}
		}
		\new Lyrics \lyricsto "five" {
			We are sing -- ing five beats in a bar and
		}
		>>
	}
}

\layout {
  indent = #0
  line-width = #90
  ragged-right = ##f
}
