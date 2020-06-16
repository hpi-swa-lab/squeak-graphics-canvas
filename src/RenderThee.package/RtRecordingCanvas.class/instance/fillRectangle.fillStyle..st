drawing-rectangles
fillRectangle: aRectangle fillStyle: aFillStyle

	self addCommand: (RtDrawRectangle
							bounds: (aRectangle translateBy: self origin negated)
							fillStyle: aFillStyle)