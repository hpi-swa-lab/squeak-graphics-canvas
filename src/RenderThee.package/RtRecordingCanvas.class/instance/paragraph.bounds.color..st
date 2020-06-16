drawing
paragraph: aParagraph bounds: aRectangle color: aColor

	self addCommand: (RtDrawParagraph
							paragraph: aParagraph
							bounds: (aRectangle translateBy: self origin negated)
							color: aColor)