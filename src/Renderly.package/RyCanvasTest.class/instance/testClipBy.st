tests - drawing - support
testClipBy

	canvas
		clipBy: (1 @ 4 corner: 9 @ 9)
		during: [:c |
			self assert: 0 @ 0 equals: c origin.
			self assert: (1 @ 4 corner: 9 @ 9) equals: c clipRect.
			c
				clipBy: (4 @ 1 corner: 9 @ 9)
				during: [:c2 |
					self assert: 0 @ 0 equals: c2 origin.
					self assert: (4 @ 4 corner: 9 @ 9) equals: c2 clipRect]]