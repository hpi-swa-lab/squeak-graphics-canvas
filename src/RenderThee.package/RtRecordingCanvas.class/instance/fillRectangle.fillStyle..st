drawing-rectangles
fillRectangle: aRectangle fillStyle: aFillStyle

	self addCommand: (DrawRectangle
							bounds: (aRectangle translateBy: self origin negated)
							fillStyle: aFillStyle)