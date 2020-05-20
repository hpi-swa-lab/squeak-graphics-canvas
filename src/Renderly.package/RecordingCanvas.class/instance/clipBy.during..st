drawing-support
clipBy: localClipRect during: aBlock

	self
		newCurrentLayer: (DrawLayer clipRect: localClipRect)
		during: aBlock