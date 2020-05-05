drawing-rectangles
frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: aFillStyle borderStyle: aBorderStyle

	self addCommand: (DrawRoundedRectangle
							bounds: aRectangle
							radius: cornerRadius
							fillStyle: aFillStyle
							borderStyle: aBorderStyle)