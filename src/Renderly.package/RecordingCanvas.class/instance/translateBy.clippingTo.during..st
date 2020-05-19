drawing-support
translateBy: delta clippingTo: localClipRect during: aBlock

	self
		newCurrentLayer: (DrawLayer
							position: delta
							clipRect: localClipRect)
		during: aBlock