drawing-rectangles
frameRectangle: aRectangle borderStyle: aBorderStyle

	self commands add: (DrawRectangle bounds: aRectangle borderStyle: aBorderStyle)