drawing-support
translateBy: delta clippingTo: localClipRect during: aBlock

	self clipBy: localClipRect during: [:canvas |
		self
			newOrigin: self origin - delta
			during: aBlock]