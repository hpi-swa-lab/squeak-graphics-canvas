drawing
drawOn: aCanvas

	aCanvas
		drawPolygon: self vertices
		fillStyle: self fillStyle
		borderWidth: self borderStyle borderWidth
		borderColor: self borderStyle borderColor