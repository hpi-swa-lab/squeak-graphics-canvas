drawing-rectangles
frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: aFillStyle borderStyle: aBorderStyle

	self addCommand: (DrawRoundedRectangle
							bounds: (aRectangle translateBy: self origin negated)
							radius: cornerRadius
							fillStyle: aFillStyle
							borderStyle: aBorderStyle)