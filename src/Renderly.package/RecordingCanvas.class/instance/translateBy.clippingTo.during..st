drawing-support
translateBy: delta clippingTo: localClipRect during: aBlock

	self
		newCurrentLayer: (DrawLayer
							origin: delta
							clipRect: (localClipRect translateBy: delta))
		during: aBlock