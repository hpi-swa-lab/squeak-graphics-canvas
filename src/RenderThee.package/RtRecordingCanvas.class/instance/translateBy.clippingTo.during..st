drawing-support
translateBy: delta clippingTo: localClipRect during: aBlock

	self
		"newCurrentLayer: (RtDrawBoundaryLayer
							transform: (Matrix4x4 withOffset: (localClipRect origin - self origin) asVector3)
							extent: localClipRect extent)
		newOrigin: localClipRect origin - delta"
		newOrigin: self origin - delta
		during: aBlock