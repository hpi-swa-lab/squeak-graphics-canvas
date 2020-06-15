drawing-support
translateBy: delta clippingTo: localClipRect during: aBlock

	(delta isZero and: [localClipRect = self clipRect]) ifTrue: [^ aBlock value: self].
	self
		newCurrentLayer: (DrawLayer
							origin: delta
							clipRect: (localClipRect translateBy: delta))
		during: aBlock