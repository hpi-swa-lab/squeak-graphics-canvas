drawing-support
clipBy: newClipRect during: aBlock

	self
		beCurrentLayer: (DrawLayer clipRect: newClipRect)
		during: aBlock