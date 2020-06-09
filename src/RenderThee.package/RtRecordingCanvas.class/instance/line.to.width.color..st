drawing
line: from to: to width: width color: color

	self addCommand: (DrawLine
							from: (from translateBy: self origin negated)
							to: (to translateBy: self origin negated)
							width: width
							color: color)