instance creation
bounds: aRectangle borderStyle: aBorderStyle

	^ self
		bounds: aRectangle
		fillStyle: (SolidFillStyle color: Color transparent)
		borderStyle: aBorderStyle