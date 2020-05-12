drawing-support
transformBy: aDisplayTransform clippingTo: localClipRect during: aBlock smoothing: cellSize

	self
		newCurrentLayer: (DrawTransformLayer
							transform: aDisplayTransform
							clipRect: localClipRect
							smoothing: cellSize)
		during: aBlock