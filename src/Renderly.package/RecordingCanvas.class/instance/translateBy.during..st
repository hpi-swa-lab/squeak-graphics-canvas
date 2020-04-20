drawing-support
translateBy: delta during: aBlock

	self
		beCurrentLayer: (DrawTranslateLayer offset: delta)
		during: aBlock