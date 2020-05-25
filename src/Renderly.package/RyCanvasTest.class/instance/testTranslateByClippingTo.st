tests - drawing - support
testTranslateByClippingTo

	canvas
		translateBy: 2 @ 3
		clippingTo: (1 @ 4 corner: 9 @ 9)
		during: [:c |
			self assert: 2 @ 3 equals: c origin.
			self assert: (c clipRect containsRect: (-1 @ 1 corner: 7 @ 6)).
			c
				translateBy: 4 @ 0
				clippingTo: (2 @ -2 corner: 7 @ 6)
				during: [:c2 |
					self assert: 6 @ 3 equals: c2 origin.
					self assert: (c2 clipRect containsRect:  (-2 @ 1 corner: 3 @ 6))]]