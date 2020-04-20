drawing-rectangles
frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle

	self commands add: (DrawRectangle bounds: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle)