drawing-rectangles
frameRectangle: aRectangle borderStyle: aBorderStyle

	self addCommand: (DrawRectangle
							bounds: (aRectangle translateBy: self origin negated)
							borderStyle: aBorderStyle)