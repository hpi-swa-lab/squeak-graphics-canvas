drawing
paragraph: aParagraph bounds: aRectangle color: aColor

	self addCommand: (DrawParagraph
							paragraph: aParagraph
							bounds: (aRectangle translateBy: self origin negated)
							color: aColor)