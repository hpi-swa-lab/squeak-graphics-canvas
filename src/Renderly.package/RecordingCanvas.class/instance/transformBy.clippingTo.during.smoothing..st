drawing-support
transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock smoothing: cellSize

	self
		newCurrentLayer: (DrawTransformLayer
							transform: aDisplayTransform
							clipRect: aClipRect
							smoothing: cellSize)
		during: aBlock