drawing-support
translateTo: globalPoint clippingTo: globalClipRect during: aBlock

	self
		newCurrentLayer: (DrawLayer
							origin: globalPoint
							clipRect: globalClipRect)
		during: aBlock