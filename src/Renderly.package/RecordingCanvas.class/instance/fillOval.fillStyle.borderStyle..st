drawing-ovals
fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle

	self addCommand: (DrawOval bounds: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle)