drawing-rectangles
fillRectangle: aRectangle fillStyle: aFillStyle

	self commands add: (DrawRectangle bounds: aRectangle fillStyle: aFillStyle)