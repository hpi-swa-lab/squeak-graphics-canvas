drawing-support
clipBy: localClipRect during: aBlock

	self
		translateBy: (0@0)
		clippingTo: localClipRect
		during: aBlock