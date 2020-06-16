drawing-rectangles
frameRectangle: aRectangle borderStyle: aBorderStyle

	self addCommand: (RtDrawRectangle
							bounds: (aRectangle translateBy: self origin negated)
							borderStyle: aBorderStyle)