drawing-support
clipBy: localClipRect during: aBlock

	self
		newCurrentLayer: (RtDrawBoundaryLayer bounds: (localClipRect translateBy: self origin negated))
		newOrigin: localClipRect origin
		during: aBlock