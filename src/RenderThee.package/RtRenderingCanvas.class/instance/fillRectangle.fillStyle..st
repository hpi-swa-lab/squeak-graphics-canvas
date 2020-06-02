drawing-rectangles
fillRectangle: aRectangle fillStyle: aFillStyle

	self addCommand: (DrawRectangle
							bounds: aRectangle
							fillStyle: aFillStyle)