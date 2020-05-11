drawing-support
translateBy: aPoint clippingTo: aRect during: aBlock

	self
		newCurrentLayer: (DrawTransformLayer
							offset: aPoint
							clipRect: aRect)
		during: aBlock