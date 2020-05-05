drawing-support
clipBy: newClipRect during: aBlock

	self
		newCurrentLayer: (DrawLayer clipRect: newClipRect)
		during: aBlock