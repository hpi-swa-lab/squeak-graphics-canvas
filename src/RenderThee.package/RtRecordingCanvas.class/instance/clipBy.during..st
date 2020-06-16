drawing-support
clipBy: localClipRect during: aBlock

	aBlock value: self.
	"self
		newCurrentLayer: (RtDrawBoundaryLayer bounds: (localClipRect translateBy: self origin negated))
		newOrigin: localClipRect origin
		during: aBlock"