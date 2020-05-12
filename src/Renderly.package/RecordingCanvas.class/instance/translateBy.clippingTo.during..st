drawing-support
translateBy: delta clippingTo: localClipRect during: aBlock

	self
		translateTo: (self globalOrigin translateBy: delta)
		clippingTo: (localClipRect translateBy: self globalOrigin)
		during: aBlock