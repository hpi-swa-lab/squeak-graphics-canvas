drawing-support
translateBy: delta during: aBlock

	self
		translateBy: delta
		clippingTo: (self localClipRect translateBy: self localOrigin negated)
		during: aBlock