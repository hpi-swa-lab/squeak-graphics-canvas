drawing-support
translateBy: aPoint clippingTo: aRect during: aBlock

	self
		beCurrentLayer: (DrawTranslateLayer offset: aPoint clipRect: aRect)
		during: aBlock