drawing-support
translateBy: aPoint clippingTo: aRect during: aBlock

	self
		newCurrentLayer: (DrawTranslateLayer offset: aPoint clipRect: aRect)
		during: aBlock