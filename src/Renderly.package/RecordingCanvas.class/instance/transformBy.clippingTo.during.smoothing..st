drawing-support
transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock smoothing: cellSize

	self
		beCurrentLayer: (DrawTransformLayer
							transform: aDisplayTransform
							clipRect: aClipRect
							smoothing: cellSize)
		during: aBlock