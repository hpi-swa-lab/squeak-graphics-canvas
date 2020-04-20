drawing-ovals
fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle

	self commands add: (DrawOval bounds: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle)