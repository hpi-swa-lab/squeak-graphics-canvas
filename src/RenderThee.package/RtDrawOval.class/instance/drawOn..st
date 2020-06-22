drawing
drawOn: aCanvas

	self flag: #todo.
	aCanvas
		fillOval: self bounds
		fillStyle: self fillStyle
		borderWidth: self borderStyle width
		borderColor: self borderStyle color