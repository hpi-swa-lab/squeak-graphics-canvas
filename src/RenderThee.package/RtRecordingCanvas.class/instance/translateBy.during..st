drawing-support
translateBy: delta during: aBlock

	self
		newOrigin: self origin - delta
		during: aBlock