drawing-rectangles
frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor

	self
		frameAndFillRectangle: r
		fillStyle: (SolidFillStyle color: fillColor)
		borderStyle: (SimpleBorder width: borderWidth color: borderColor)