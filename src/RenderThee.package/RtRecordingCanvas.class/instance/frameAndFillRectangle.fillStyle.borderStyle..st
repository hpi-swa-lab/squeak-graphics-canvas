drawing-rectangles
frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle

	self addCommand: (DrawRectangle
							bounds: (aRectangle translateBy: self origin negated)
							fillStyle: aFillStyle
							borderStyle: aBorderStyle)