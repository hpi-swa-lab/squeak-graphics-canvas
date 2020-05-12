drawing-support
clipBy: localClipRect during: aBlock

	self
		newCurrentLayer: (DrawLayer clipRect: (localClipRect translateBy: self globalOrigin))
		during: aBlock