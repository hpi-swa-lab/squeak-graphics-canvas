drawing-support
translateBy: delta during: aBlock

	self
		newCurrentLayer: (DrawTranslateLayer offset: delta)
		during: aBlock