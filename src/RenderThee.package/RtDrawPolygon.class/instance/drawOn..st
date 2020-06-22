drawing
drawOn: aCanvas

	aCanvas
		drawPolygon: self vertices
		fillStyle: self fillStyle
		borderWidth: self borderStyle width
		borderColor: self borderStyle color