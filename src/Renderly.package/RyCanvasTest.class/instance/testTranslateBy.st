tests - drawing - support
testTranslateBy

	canvas
		translateBy: 2 @ 3
		during: [:c |
			self assert: 2 @ 3 equals: c origin.
			self assert: (c clipRect containsRect: (-2 @ -3 corner: 8 @ 7)).
			c
				translateBy: 4 @ 0
				during: [:c2 |
					self assert: 6 @ 3 equals: c2 origin.
					self assert: (c2 clipRect containsRect: (-6 @ -3 corner: 4 @ 7))]]