drawing-rectangles
frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle

	self addCommand: (DrawRectangle bounds: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle)