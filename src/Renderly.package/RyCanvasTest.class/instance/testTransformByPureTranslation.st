tests - drawing - support
testTransformByPureTranslation

	canvas
		transformBy: (MatrixTransform2x3 withOffset: -2 @ -3)
		clippingTo: (1 @ 4 corner: 9 @ 9)
		during: [:c |
			self assert: 2 @ 3 equals: c origin.
			self assert: (c clipRect containsRect: (-1 @ 1 corner: 7 @ 6)).
			c
				transformBy: (MatrixTransform2x3 withOffset: -4 @ 0)
				clippingTo: (2 @ -2 corner: 7 @ 6)
				during: [:c2 |
					self assert: 6 @ 3 equals: c2 origin.
					self assert: (c2 clipRect containsRect: (-2 @ 1 corner: 3 @ 6))]]