drawing-support
translateBy: delta during: aBlock

	self
		translateTo: (self globalOrigin translateBy: delta)
		clippingTo: self globalClipRect
		during: aBlock