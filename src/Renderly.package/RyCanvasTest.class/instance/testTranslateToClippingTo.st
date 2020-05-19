tests - drawing - support
testTranslateToClippingTo

	canvas
		translateTo: 2 @ 3
		clippingTo: (1 @ 4 corner: 9 @ 9)
		during: [:c |
			self assert: 2 @ 3 equals: c origin.
			self assert: (-1 @ 1 corner: 7 @ 6) equals: c clipRect.
			c
				translateTo: 6 @ 3
				clippingTo: (4 @ 1 corner: 9 @ 9)
				during: [:c2 |
					self assert: 6 @ 3 equals: c2 origin.
					self assert: (-2 @ 1 corner: 3 @ 6) equals: c2 clipRect]]