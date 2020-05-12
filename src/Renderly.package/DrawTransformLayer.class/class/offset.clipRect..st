instance creation
offset: aPoint clipRect: aRectangle

	^ self
		transform: (MatrixTransform2x3 withOffset: aPoint negated)
		clipRect: aRectangle
		smoothing: 0