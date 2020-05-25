tests - drawing - support
testClipBy

	canvas
		clipBy: (1 @ 4 corner: 9 @ 9)
		during: [:c |
			self assert: 0 @ 0 equals: c origin.
			self assert: (c clipRect containsRect: (1 @ 4 corner: 9 @ 9)).
			c
				clipBy: (4 @ 1 corner: 9 @ 9)
				during: [:c2 |
					self assert: 0 @ 0 equals: c2 origin.
					self assert: (c2 clipRect containsRect: (4 @ 4 corner: 9 @ 9))]]