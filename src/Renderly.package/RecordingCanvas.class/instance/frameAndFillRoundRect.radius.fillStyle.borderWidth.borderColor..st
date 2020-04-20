drawing-rectangles
frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc

	self
		frameAndFillRoundRect: aRectangle
		radius: cornerRadius
		fillStyle: fillStyle
		borderStyle: (SimpleBorder width: bw color: bc)