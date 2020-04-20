drawing-rectangles
frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: aFillStyle borderStyle: aBorderStyle

	self commands add: (DrawRoundedRectangle
							bounds: aRectangle
							radius: cornerRadius
							fillStyle: aFillStyle
							borderStyle: aBorderStyle)