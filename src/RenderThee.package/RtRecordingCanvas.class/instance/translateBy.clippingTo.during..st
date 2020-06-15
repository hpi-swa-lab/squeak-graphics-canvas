drawing-support
translateBy: delta clippingTo: localClipRect during: aBlock

	"delta isZero ifTrue: [^ aBlock value: self]."
	self
		newCurrentLayer: (RtDrawBoundaryLayer
							transform: (Matrix4x4 withOffset: (localClipRect origin - self origin) asVector3)
							extent: localClipRect extent)
		newOrigin: localClipRect origin - delta
		during: aBlock