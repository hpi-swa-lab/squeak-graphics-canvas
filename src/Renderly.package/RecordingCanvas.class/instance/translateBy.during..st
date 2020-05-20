drawing-support
translateBy: delta during: aBlock

	self
		newCurrentLayer: (DrawLayer origin: delta)
		during: aBlock