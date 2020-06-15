drawing-rectangles
frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle

	self addCommand: (RtDrawRectangle
							bounds: (aRectangle translateBy: self origin negated)
							fillStyle: aFillStyle
							borderStyle: aBorderStyle)