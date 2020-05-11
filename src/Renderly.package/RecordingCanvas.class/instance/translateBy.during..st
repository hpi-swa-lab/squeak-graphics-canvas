drawing-support
translateBy: delta during: aBlock

	delta isZero ifFalse: [
		self translateBy: delta clippingTo: self clipRect during: aBlock]