drawing
drawOn: aCanvas

	self flag: #todo.
	aCanvas
		fillOval: bounds
		fillStyle: fillStyle
		borderWidth: borderStyle width
		borderColor: borderStyle color