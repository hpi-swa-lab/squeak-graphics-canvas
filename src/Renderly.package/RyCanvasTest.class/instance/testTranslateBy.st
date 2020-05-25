tests - drawing - support
testTranslateBy

	canvas
		translateBy: 2 @ 3
		during: [:c |
			self assert: 2 @ 3 equals: c origin.
			self assert: (-2 @ -3 corner: 8 @ 7) equals: c clipRect.
			c
				translateBy: 4 @ 0
				during: [:c2 |
					self assert: 6 @ 3 equals: c2 origin.
					self assert: (-6 @ -3 corner: 4 @ 7) equals: c2 clipRect]]