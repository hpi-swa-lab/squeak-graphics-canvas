tests - drawing - support
testTransformBy

	canvas
		transformBy: (MatrixTransform2x3 withAngle: 180)
		clippingTo: (1 @ 4 corner: 9 @ 9)
		during: [:c |
			self assert: 8 @ 8 equals: c origin.
			self assert: (-8 @ -8 corner: 0 @ -3) equals: c clipRect.
			c
				transformBy: (MatrixTransform2x3 withAngle: 180)
				clippingTo: (4 @ 1 corner: 9 @ 9)
				during: [:c2 |
					self assert: 8 @ 8 equals: c2 origin.
					self assert: (-8 @ -8 corner: -3 @ 0) equals: c2 clipRect]]