drawing-rectangles
frameRectangle: aRectangle borderStyle: aBorderStyle

	self addCommand: (DrawRectangle
							bounds: aRectangle
							borderStyle: aBorderStyle)