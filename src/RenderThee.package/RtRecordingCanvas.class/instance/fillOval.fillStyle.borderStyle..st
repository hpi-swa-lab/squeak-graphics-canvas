drawing-ovals
fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle

	self addCommand: (DrawOval
							bounds: (aRectangle translateBy: self origin negated)
							fillStyle: aFillStyle
							borderStyle: aBorderStyle)