instance creation
offset: aPoint clipRect: aRectangle

	^ self
		transform: (MatrixTransform2x3 withOffset: aPoint)
		clipRect: aRectangle
		smoothing: 0